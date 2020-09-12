import 'package:dartz/dartz.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';

class DisplayName extends FieldObject<String> {
  @override
  final Either<FieldObjectException<String>, String> value;

  factory DisplayName(String input) {
    assert(input != null);
    return DisplayName._(Validator.basic(input));
  }

  const DisplayName._(this.value);
}
