import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:smartlets/features/auth/data/repositories/user_auth_impl.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';
import 'package:smartlets/features/parent/domain/entities/entities.dart';
import 'package:smartlets/utils/utils.dart';

import 'firebase_user_extension.dart';

@LazySingleton(as: AuthFacade)
class FirebaseAuthImpl implements AuthFacade {
  static const int FACEBOOK_IMAGE_WIDTH = 600;
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FacebookLogin _facebookLogin;
  final UserAuthImpl _userAuthFacade;
  final DataConnectionChecker _connectionChecker;
  AuthProviderType provider;

  FirebaseAuthImpl(
    this._firebaseAuth,
    this._googleSignIn,
    this._connectionChecker,
    this._userAuthFacade,
    this._facebookLogin,
  );

  @factoryMethod
  static FirebaseAuthImpl instance(
    FirebaseAuth auth,
    GoogleSignIn google,
    FacebookLogin facebook,
    UserAuthImpl _userAuthFacade,
    DataConnectionChecker conn,
  ) =>
      FirebaseAuthImpl(auth, google, conn, _userAuthFacade, facebook);

  Future<void> _checkForStableInternet() async {
    var hasStableInternet = await _connectionChecker.hasConnection;
    if (!hasStableInternet) throw AuthFailure.noInternetConnection();
  }

  Future<Tuple2<List<String>, bool>> _fetchSignInMethods(Either<String, EmailAddress> email,
      {@required AuthProviderType auth}) async {
    try {
      String _email = email.fold(id, (r) => r.getOrCrash);
      final result = await _firebaseAuth.fetchSignInMethodsForEmail(_email);
      return Tuple2(result, result.contains(auth.name));
    } catch (e) {
      rethrow;
    }
  }

  Future<Either<AuthFailure, Unit>> _firebaseSignInWithCredentials(AuthCredential credential) async {
    try {
      // First we'll check for stable Internet connection
      await _checkForStableInternet();
      // SignIn to firebase using user's google account credentials
      await _firebaseAuth.signInWithCredential(credential);
      return right(unit);
    } on AuthFailure catch (e) {
      return left(e);
    } on FirebaseAuthException catch (e) {
      print("Exception here ====> $e");
      return _handleAuthException(e);
    } catch (e) {
      return left(AuthFailure.unknownFailure(message: (e is Exception || e is Error) ? e?.message : null));
    }
  }

  Future<Either<AuthFailure, Unit>> _handleAuthException(FirebaseAuthException e) async {
    switch (e.code) {
      case INVALID_EMAIL:
      case WRONG_PASSWORD:
        return left(AuthFailure.invalidCredentials());
      case INVALID_CREDENTIAL:
        return left(AuthFailure.invalidCredentials());
      case USER_NOT_FOUND:
        return left(AuthFailure.userAccountNotFound());
      case USER_DISABLED:
        return left(AuthFailure.userAccountDisabled());
      case CRED_ALREADY_IN_USE:
      case ACCOUNT_EXISTS_WITH_DIFFERENT_CRED:
        return AuthProviderType.switchCase(
          provider.name,
          isGoogle: (name) => left(AuthFailure.accountAlreadyExists(
            email: EmailAddress(e.email),
            provider: AuthProviderType.Google,
            message: e.message,
            credentials: e.credential,
          )),
          isPassword: (name) => left(AuthFailure.accountAlreadyExists(
            email: EmailAddress(e.email),
            provider: AuthProviderType.Password,
            message: e.message,
            credentials: e.credential,
          )),
          isFacebook: (name) => left(AuthFailure.accountAlreadyExists(
            email: EmailAddress(e.email),
            provider: AuthProviderType.Facebook,
            message: e.message,
            credentials: e.credential,
          )),
          isTwitter: (name) => left(AuthFailure.accountAlreadyExists(
            email: EmailAddress(e.email),
            provider: AuthProviderType.Twitter,
            message: e.message,
            credentials: e.credential,
          )),
          isPhone: (name) => right(unit),
        );
      case INVALID_ACTION_CODE:
        return left(AuthFailure.expiredOrInvalidToken(message: "Invalid verification code, please try again."));
      case EMAIL_ALREADY_IN_USE:
        return left(AuthFailure.emailAlreadyInUse());
      case REQUIRES_RECENT_LOGIN:
        return left(AuthFailure.expiredOrInvalidToken(message: "Re-authenticate to continue"));
      case TOO_MANY_REQUESTS:
        return left(AuthFailure.tooManyRequests());
      case PROVIDER_ALREADY_LINKED:
        return right(unit);
      case OPERATION_NOT_ALLOWED:
        return left(AuthFailure.unExpectedFailure(message: "Operation not allowed! Please contact support."));
      case WEAK_PASSWORD:
        return left(AuthFailure.weakPassword());
      case EXPIRED_ACTION_CODE:
        return left(AuthFailure.expiredOrInvalidToken(message: "Expired verification code."));
      case INVALID_VERIFICATION_ID:
      case INVALID_VERIFICATION_CODE:
        return left(AuthFailure.invalidCredentials(
            message: "Invalid verification code."
                "\nDidn't get the code? Tap Resend."));
      default:
        return left(AuthFailure.unknownFailure(message: (e is Exception || e is Error) ? e?.message : null));
    }
  }

  @override
  Option<User> get currentUser => optionOf(_firebaseAuth.currentUser?.domain);

  @override
  Stream<Option<User>> get onAuthStateChanged => _firebaseAuth.authStateChanges().map((user) => optionOf(user?.domain));

  @override
  Stream<Option<User>> get onUserChanges => _firebaseAuth.userChanges().map((user) => optionOf(user?.domain));

  @override
  Future<Either<AuthFailure, Unit>> createAccount({@required EmailAddress emailAddress, @required Password password}) async {
    try {
      // First we'll check for stable Internet connection
      await _checkForStableInternet();
      await _firebaseAuth.createUserWithEmailAndPassword(email: emailAddress.getOrCrash, password: password.getOrCrash);
      if (_firebaseAuth.currentUser != null && !_firebaseAuth.currentUser.emailVerified)
        _firebaseAuth.currentUser.sendEmailVerification();
      return right(unit);
    } on AuthFailure catch (e) {
      return left(e);
    } on FirebaseAuthException catch (e) {
      return _handleAuthException(e);
    } catch (e) {
      return left(AuthFailure.unknownFailure(message: (e is Exception || e is Error) ? e?.message : null));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> login({@required EmailAddress emailAddress, @required Password password}) async {
    try {
      // First we'll check for stable Internet connection
      await _checkForStableInternet();
      await _firebaseAuth.signInWithEmailAndPassword(email: emailAddress.getOrCrash, password: password.getOrCrash);
      return right(unit);
    } on AuthFailure catch (e) {
      return left(e);
    } on FirebaseAuthException catch (e) {
      return _handleAuthException(e);
    } catch (e) {
      return left(AuthFailure.unknownFailure(message: (e is Exception || e is Error) ? e?.message : null));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> updateProfile({
    DisplayName name,
    EmailAddress email,
    String photoURL,
    bool inFirestore = true,
  }) async {
    try {
      // First we'll check for stable Internet connection
      await _checkForStableInternet();
      await name?.value?.fold(
        (_) => throw AuthFailure.unExpectedFailure(message: "Name Field is invalid"),
        (_name) async {
          try {
            await _firebaseAuth.currentUser?.updateProfile(displayName: _name);
          } catch (_) {
            log.e("Exception Updating _firebaseAuth UserDATA [firebase_auth_impl] ==> $_");
          }
          try {
            if (inFirestore) await _userAuthFacade.update(User(displayName: name));
          } catch (_) {
            log.e("Exception Updating Firestore DOCUMENT [firebase_auth_impl] ==> $_");
          }
        },
      );

      await email?.value?.fold(
        (_) => throw AuthFailure.unExpectedFailure(message: "Email Field is invalid"),
        (_email) async {
          // await _firebaseAuth.currentUser?.reauthenticateWithCredential(credential);
          // TODO: FIX THIS, IT DOESN'T WORK
          try {
            await _firebaseAuth.currentUser?.updateEmail(_email);
          } catch (_) {
            log.e("Exception Updating _firebaseAuth UserDATA [firebase_auth_impl] ==> $_");
          }
          try {
            if (inFirestore) await _userAuthFacade.update(User(email: email));
          } catch (_) {
            log.e("Exception Updating Firestore DOCUMENT [firebase_auth_impl] ==> $_");
          }
        },
      );

      if (!photoURL.isNullOrBlank) {
        try {
          await _firebaseAuth.currentUser?.updateProfile(photoURL: photoURL);
        } catch (_) {
          log.e("Exception Updating _firebaseAuth UserDATA [firebase_auth_impl] ==> $_");
        }
        try {
          if (inFirestore) await _userAuthFacade.update(User(photoURL: photoURL));
        } catch (_) {
          log.e("Exception Updating Firestore DOCUMENT [firebase_auth_impl] ==> $_");
        }
      }

      return right(unit);
    } on AuthFailure catch (e) {
      return left(e);
    } on FirebaseAuthException catch (e) {
      print("Firebase EX caught  ===> $e");
      return _handleAuthException(e);
    } catch (e) {
      return left(AuthFailure.unknownFailure(message: (e is Exception || e is Error) ? e?.message : null));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> changePassword({Password oldPassword, Password newPassword}) async {
    String _oldPassword = oldPassword.getOrCrash;
    String _newPassword = newPassword.getOrCrash;

    try {
      // First we'll check for stable Internet connection
      await _checkForStableInternet();
      await _firebaseAuth.currentUser?.reauthenticateWithCredential(EmailAuthProvider.credential(
        email: _firebaseAuth.currentUser?.email,
        password: _oldPassword,
      ));

      await _firebaseAuth.currentUser?.updatePassword(_newPassword);

      return right(unit);
    } on AuthFailure catch (e) {
      return left(e);
    } on FirebaseAuthException catch (e) {
      return _handleAuthException(e);
    } catch (e) {
      return left(AuthFailure.unknownFailure(message: (e is Exception || e is Error) ? e?.message : null));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> confirmPasswordReset({String code, Password newPassword}) async {
    try {
      await _checkForStableInternet();
      await _firebaseAuth.confirmPasswordReset(code: code, newPassword: newPassword.getOrCrash);
      return right(unit);
    } on AuthFailure catch (e) {
      return left(e);
    } on FirebaseAuthException catch (e) {
      return _handleAuthException(e);
    } catch (e) {
      return left(AuthFailure.unknownFailure(message: (e is Exception || e is Error) ? e?.message : null));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail(EmailAddress email) async {
    try {
      await _checkForStableInternet();
      await _firebaseAuth.sendPasswordResetEmail(email: email.getOrCrash);
      return right(unit);
    } on AuthFailure catch (e) {
      return left(e);
    } on FirebaseAuthException catch (e) {
      if (e.code == INVALID_EMAIL)
        return left(AuthFailure.invalidCredentials(
          message: "Invalid email-address.",
        ));
      return left(AuthFailure.userAccountNotFound(
        message: "Email address does not exist.",
      ));
    } catch (e) {
      return left(AuthFailure.unknownFailure(message: (e is Exception || e is Error) ? e?.message : null));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> googleAuthentication([Object pendingCredentials]) async {
    try {
      // First we'll check for stable Internet connection
      await _checkForStableInternet();
      // Attempt authenticating user with google credentials
      GoogleSignInAccount account = await _googleSignIn.signIn();
      // If null, => user cancelled authentication
      if (account == null) throw AuthFailure.cancelledAction();

      // get authentication details [idToken], [accessToken]
      final authentication = await account.authentication;

      // Get instance of AuthCredentials
      AuthCredential authCredential = GoogleAuthProvider.credential(
        idToken: authentication.idToken,
        accessToken: authentication.accessToken,
      );

      // Fetch User's sign-in methods
      var _provider = await _fetchSignInMethods(left(account.email), auth: AuthProviderType.Google);

      // Checks if Sign in method exists for email address && Current Provider does not exist on Firebase
      if (_provider.value1.isNotEmpty && !_provider.value2)
        await AuthProviderType.switchCase<Future<AuthFailure>>(
          _provider?.value1?.first,
          isPassword: (name) {
            provider = AuthProviderType.Password;
            throw FirebaseAuthException(
              code: ACCOUNT_EXISTS_WITH_DIFFERENT_CRED,
              message: "An account already exists with the same email address but different sign-in credentials."
                  "\n\nClick to enter your Password.",
              email: account.email,
              credential: authCredential,
            );
          },
          isFacebook: (name) {
            provider = AuthProviderType.Facebook;
            throw FirebaseAuthException(
              code: ACCOUNT_EXISTS_WITH_DIFFERENT_CRED,
              message: "An account already exists with the same email address but different sign-in credentials."
                  "\n\nSign in with $name to continue.",
              email: account.email,
              credential: authCredential,
            );
          },
          orElse: (name) => null,
        );

      // PERFORM FIREBASE SIGN-IN
      final _result = await _firebaseSignInWithCredentials(authCredential);

      // Fetch User's Photo URL
      String photoURL = account.photoUrl;
      // Update FirebaseAuth User's Profile url
      if (_provider.value1.isEmpty) await updateProfile(photoURL: photoURL, inFirestore: false);

      if (pendingCredentials != null && _result.isRight()) {
        await _firebaseAuth.currentUser?.linkWithCredential(pendingCredentials);
        await _userAuthFacade.update(User(providers: User.mapProvidersToDomain(_firebaseAuth.currentUser.providerData)));
      }
      return _result;
    } on AuthFailure catch (e) {
      return left(e);
    } on FirebaseAuthException catch (e) {
      return _handleAuthException(e);
    } catch (e) {
      return left(AuthFailure.unknownFailure(message: (e is Exception || e is Error) ? e?.message : null));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> facebookAuthentication([Object pendingCredentials]) async {
    try {
      // First we'll check for stable Internet connection
      await _checkForStableInternet();

      final result = await _facebookLogin.logIn(permissions: [
        FacebookPermission.email,
        FacebookPermission.publicProfile,
      ]);

      switch (result.status) {
        case FacebookLoginStatus.success:
          // Fetch AuthCredentials
          AuthCredential credential = FacebookAuthProvider.credential(result.accessToken.token);
          // Fetch User's Email Address
          String email = await _facebookLogin.getUserEmail();
          // Fetch User's Photo URL
          String photoURL = await _facebookLogin.getProfileImageUrl(width: FACEBOOK_IMAGE_WIDTH);

          // Fetch User's sign-in methods
          var _provider = await _fetchSignInMethods(left(email), auth: AuthProviderType.Facebook);

          // Checks if Sign in method exists for email address && Current Provider does not exist on Firebase
          if (_provider.value1.isNotEmpty && !_provider.value2)
            await AuthProviderType.switchCase<FutureOr<AuthFailure>>(
              _provider.value1.first,
              isPassword: (name) {
                // Set the first AuthProvider user signed-in with
                provider = AuthProviderType.Password;
                throw FirebaseAuthException(
                  code: ACCOUNT_EXISTS_WITH_DIFFERENT_CRED,
                  message: "An account already exists with the same email address but different sign-in credentials."
                      "\n\nClick to enter your Password.",
                  email: email,
                  credential: credential,
                );
              },
              isGoogle: (name) {
                provider = AuthProviderType.Google;
                throw FirebaseAuthException(
                  code: ACCOUNT_EXISTS_WITH_DIFFERENT_CRED,
                  message: "An account already exists with the same email address but different sign-in credentials."
                      "\n\nSign in with $name to continue.",
                  email: email,
                  credential: credential,
                );
              },
              isFacebook: (name) => null,
            );

          // PERFORM FIREBASE SIGN-IN
          final _result = await _firebaseSignInWithCredentials(credential);

          // Update FirebaseAuth User's Profile url
          if (_provider.value1.isEmpty) await updateProfile(photoURL: photoURL, inFirestore: false);

          if (pendingCredentials != null && _result.isRight()) {
            await _firebaseAuth.currentUser?.linkWithCredential(pendingCredentials);
            await _userAuthFacade.update(User(providers: User.mapProvidersToDomain(_firebaseAuth.currentUser.providerData)));
          }

          return _result;
        case FacebookLoginStatus.cancel:
          throw AuthFailure.cancelledAction();
          break;
        case FacebookLoginStatus.error:
          print("Facebook error TITLE ===> ${result.error?.localizedTitle}");
          print("Facebook error (for developer) ===> ${result.error?.developerMessage}");
          throw AuthFailure.unknownFailure(code: "${result.status.index}", message: "${result.error?.localizedDescription}");
          break;
        default:
          throw AuthFailure.unknownFailure(code: "unknown_error", message: "Provider error. Please contact support.");
      }
    } on AuthFailure catch (e) {
      return left(e);
    } on FirebaseAuthException catch (e) {
      return _handleAuthException(e);
    } catch (e) {
      return left(AuthFailure.unknownFailure(message: (e is Exception || e is Error) ? e.toString() : null));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithCredentials([AuthCredential old, AuthCredential incoming]) async {
    try {
      // First we'll check for stable Internet connection
      await _checkForStableInternet();
      if (old != null && incoming == null) {
        return await _firebaseSignInWithCredentials(old);
      }

      if (old != null && incoming != null) {
        final result = await _firebaseSignInWithCredentials(old);

        return result.fold((_) => Future.value(left(_)), (_) async {
          // Link with firebase provider
          await _firebaseAuth.currentUser.linkWithCredential(incoming);

          // Update Profile Picture [using Provider data]
          if (incoming is FacebookAuthCredential) {
            // Fetch Facebook User Photo URL
            String photoURL = await _facebookLogin?.getProfileImageUrl(width: FACEBOOK_IMAGE_WIDTH);
            await updateProfile(photoURL: photoURL, inFirestore: true);
          }
          if (incoming is GoogleAuthCredential) {
            // Fetch Google User Photo URL
            String photoURL = _googleSignIn?.currentUser?.photoUrl;
            await updateProfile(photoURL: photoURL, inFirestore: true);
          }
          await _userAuthFacade.update(User(providers: User.mapProvidersToDomain(_firebaseAuth.currentUser.providerData)));
          return Future.value(right(_));
        });
      }

      throw AuthFailure.invalidCredentials(message: "Credentials are invalid. Try again or contact support.");
    } on AuthFailure catch (e) {
      return left(e);
    } on FirebaseAuthException catch (e) {
      if (e.code == WRONG_PASSWORD) return left(AuthFailure.invalidCredentials(message: "Wrong or invalid password."));
      return _handleAuthException(e);
    } catch (e) {
      return left(AuthFailure.unknownFailure(message: (e is Exception || e is Error) ? e?.message : null));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> twitterAuthentication([Object pendingCredentials]) async =>
      throw UnimplementedError("Twitter "
          "Authentication Feature not Implemented.\nPlease contact support.");

  @override
  Future<void> signOut() => Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
        _facebookLogin.logOut(),
      ]);
}
