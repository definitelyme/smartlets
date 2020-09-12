import 'package:dartz/dartz.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';

class Password extends FieldObject<String> {
  @override
  final Either<FieldObjectException<String>, String> value;

  factory Password(String password, {FIELD_VALIDATION mode}) {
    assert(password != null);
    return Password._(Validator.passwordValidator(password, validationMode: mode));
  }

  const Password._(this.value);
}
