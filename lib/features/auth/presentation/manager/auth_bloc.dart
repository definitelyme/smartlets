import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@Injectable()
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthFacade _auth;

  AuthBloc(this._auth) : super(AuthState.init());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield state.copyWith(isLoading: true, authStatus: none());

    yield* event.map(
      displayNameChanged: (e) async* {
        yield state.copyWith(displayName: DisplayName(e.input));
      },
      emailChanged: (e) async* {
        yield state.copyWith(emailAddress: EmailAddress(e.email));
      },
      passwordChanged: (e) async* {
        yield state.copyWith(password: Password(e.password, mode: e.mode));
      },
      toggledPasswordVisibility: (e) async* {
        yield state.copyWith(passwordHidden: !state.passwordHidden);
      },
      toggledSnackBarVisibility: (e) async* {
        yield state.copyWith(snackbarDismissed: e.value ?? !state.snackbarDismissed);
      },
      signInWithEmailAndPassword: (_) async* {
        yield* _mapSignInWithEmailAndPassword(_);
      },
      createAccountWithEmailAndPassword: (_) async* {
        yield* _mapCreateAccountWithEmailAndPassword(_);
        await _auth.updateProfileInfo(displayName: state.displayName);
      },
      emailPasswordReset: (e) async* {
        yield* _mapSendPasswordResetEmail(e);
      },
      signInWithGoogle: (e) async* {
        final result = await _auth.googleAuthentication(e.incoming);
        yield state.copyWith(authStatus: some(result), snackbarDismissed: false);
      },
      signInWithFacebook: (e) async* {
        final result = await _auth.facebookAuthentication(e.incoming);
        yield state.copyWith(authStatus: some(result), snackbarDismissed: false);
      },
      signInWithCredentials: (e) async* {
        yield* _mapSignInWithCred(e);
      },
      signOut: (e) async* {
        await _auth.signOut();
      },
      signInWithTwitter: (e) async* {
        final result = await _auth.twitterAuthentication(e.incoming);
        yield state.copyWith(authStatus: some(result), snackbarDismissed: false);
      },
    );

    yield state.copyWith(isLoading: false);
  }

  Stream<AuthState> _mapSignInWithEmailAndPassword(
    _SignInWithEmailAndPassword e,
  ) async* {
    EmailAddress email = state.emailAddress;
    Password password = state.password;
    Either<AuthFailure, Unit> failureOrUnit;

    if (email.isValid && password.isValid)
      failureOrUnit = await _auth.login(
        emailAddress: email,
        password: password,
      );

    yield state.copyWith(
      validate: true,
      authStatus: optionOf(failureOrUnit),
      snackbarDismissed: false,
    );
  }

  Stream<AuthState> _mapCreateAccountWithEmailAndPassword(
    _CreateAccountWithEmailAndPassword e,
  ) async* {
    DisplayName name = state.displayName;
    EmailAddress email = state.emailAddress;
    Password password = state.password;
    Either<AuthFailure, Unit> failureOrUnit;

    if (name.isValid && email.isValid && password.isValid) {
      failureOrUnit = await _auth.createAccount(
        emailAddress: email,
        password: password,
      );
    }

    yield state.copyWith(
      validate: true,
      authStatus: optionOf(failureOrUnit),
      snackbarDismissed: false,
    );
  }

  Stream<AuthState> _mapSignInWithCred(_SignInWithCredentials e) async* {
    EmailAddress email = state.emailAddress;
    Password password = state.password;
    Either<AuthFailure, Unit> failureOrUnit;

    if (e.provider == null) {
      // Perform a normal Sign In with credentials
      failureOrUnit = await _auth.signInWithCredentials(e.credential);
    }

    if (e.provider != null)
      failureOrUnit = await AuthProvider.switchCase<FutureOr<Either<AuthFailure, Unit>>>(
        e.provider.name,
        isPassword: (name) async {
          try {
            final cred = EmailAuthProvider.credential(email: email.getOrCrash, password: password.getOrCrash);
            return await _auth.signInWithCredentials(cred, e.incoming);
          } on AuthFailure catch (e) {
            return left(e);
          }
        },
      );

    yield state.copyWith(
      validate: true,
      authStatus: optionOf(failureOrUnit),
      snackbarDismissed: false,
    );
  }

  Stream<AuthState> _mapSendPasswordResetEmail(_EmailPasswordReset e) async* {
    EmailAddress email = state.emailAddress;
    Either<AuthFailure, Unit> failureOrUnit;

    if (email.isValid) failureOrUnit = await _auth.sendPasswordResetEmail(email);

    yield state.copyWith(
      validate: true,
      authStatus: optionOf(failureOrUnit),
      snackbarDismissed: false,
    );
  }
}
