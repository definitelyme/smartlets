import 'package:firebase_auth/firebase_auth.dart';

enum FIELD_VALIDATION { NONE, BASIC, DEEP }

class AuthProvider {
  // ignore: non_constant_identifier_names
  static AuthProvider Google = AuthProvider._(GoogleAuthProvider.PROVIDER_ID);

  // ignore: non_constant_identifier_names
  static AuthProvider Facebook = AuthProvider._(FacebookAuthProvider.PROVIDER_ID);

  // ignore: non_constant_identifier_names
  static AuthProvider Twitter = AuthProvider._(TwitterAuthProvider.PROVIDER_ID);

  // ignore: non_constant_identifier_names
  static AuthProvider Password = AuthProvider._(EmailAuthProvider.EMAIL_PASSWORD_SIGN_IN_METHOD);

  // ignore: non_constant_identifier_names
  static AuthProvider EmailLink = AuthProvider._(EmailAuthProvider.EMAIL_LINK_SIGN_IN_METHOD);

  // ignore: non_constant_identifier_names
  static AuthProvider Phone = AuthProvider._(PhoneAuthProvider.PHONE_SIGN_IN_METHOD);

  final String name;

  const AuthProvider._(this.name);

  static List<AuthProvider> get values => [
        Google,
        Facebook,
        Twitter,
        Password,
        EmailLink,
        Phone,
      ];

  static AuthProvider valueOf(String name) => switchCase<AuthProvider>(
        name,
        isGoogle: (name) => Google,
        isFacebook: (name) => Facebook,
        isTwitter: (name) => Twitter,
        isPassword: (name) => Password,
        isEmailLink: (name) => EmailLink,
        isPhone: (name) => Phone,
      );

  static T switchCase<T>(
    String name, {
    T Function(String name) isGoogle,
    T Function(String name) isFacebook,
    T Function(String name) isTwitter,
    T Function(String name) isPassword,
    T Function(String name) isEmailLink,
    T Function(String name) isPhone,
    T Function(String name) orElse,
  }) {
    try {
      switch (name) {
        case 'google.com':
          return isGoogle('Google');
        case 'facebook.com':
          return isFacebook('Facebook');
        case 'twitter.com':
          return isTwitter('Twitter');
        case 'email':
          return isPassword('Password');
        case 'password':
          return isPassword('Password');
        case 'emailLink':
          return isEmailLink('Email link');
        default:
          return orElse != null ? orElse(name) : throw ArgumentError(name);
      }
    } on NoSuchMethodError {
      return orElse(name);
    }
  }

  @override
  String toString() => name;
}
