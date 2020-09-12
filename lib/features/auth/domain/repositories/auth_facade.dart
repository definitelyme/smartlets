import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:meta/meta.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';
import 'package:smartlets/features/parent/domain/entities/entities.dart';

abstract class AuthFacade with FirebaseDepMixin {
  Option<User> get currentUser;

  Stream<Option<User>> get onAuthStateChanged;

  Future<Either<AuthFailure, Unit>> updateProfileInfo({DisplayName displayName, String photoUrl});

  Future<Either<AuthFailure, Unit>> login({@required EmailAddress emailAddress, @required Password password});

  Future<Either<AuthFailure, Unit>> createAccount({@required EmailAddress emailAddress, @required Password password});

  Future<Either<AuthFailure, Unit>> googleAuthentication([Object pendingCredentials]);

  Future<Either<AuthFailure, Unit>> facebookAuthentication([Object pendingCredentials]);

  Future<Either<AuthFailure, Unit>> twitterAuthentication([Object pendingCredentials]);

  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail(EmailAddress email);

  Future<Either<AuthFailure, Unit>> confirmPasswordReset({String code, Password newPassword});

  Future<void> signOut();
}

mixin FirebaseDepMixin {
  Future<Either<AuthFailure, Unit>> signInWithCredentials([AuthCredential old, AuthCredential incoming]);
}
