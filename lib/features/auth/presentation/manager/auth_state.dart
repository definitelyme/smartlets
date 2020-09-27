part of 'auth_bloc.dart';

@freezed
@immutable
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @required DisplayName displayName,
    @required EmailAddress emailAddress,
    @required EmailAddress parentEmailAddress,
    @required Password password,
    @required Password newPassword,
    Subscription subscription,
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @Default(true) bool passwordHidden,
    @Default(const None()) Option<Either<AuthFailure, Unit>> authStatus,
    @Default(true) bool snackbarDismissed,
  }) = _AuthState;

  factory AuthState.init() => AuthState(
        displayName: DisplayName(""),
        emailAddress: EmailAddress(""),
        parentEmailAddress: EmailAddress(""),
        password: Password(""),
        newPassword: Password(""),
      );
}
