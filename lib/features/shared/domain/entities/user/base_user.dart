import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';

abstract class BaseUser {
  UniqueId get id;
  Roles get role;
  DisplayName get displayName;
  EmailAddress get email;
  bool get isEmailVerified;
  Phone get phone;
  String get photoURL;
}
