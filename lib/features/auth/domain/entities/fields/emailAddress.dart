import 'package:dartz/dartz.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';

class EmailAddress extends FieldObject<String> {
  @override
  final Either<FieldObjectException<String>, String> value;

  factory EmailAddress(String email) {
    assert(email != null);
    return EmailAddress._(Validator.emailValidator(email));
  }

  const EmailAddress._(this.value);
}
