import 'package:dartz/dartz.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';

import '../exports.dart';

class Gender extends FieldObject<GenderType> {
  @override
  final Either<FieldObjectException<String>, GenderType> value;

  factory Gender(GenderType type) => Gender._(Validator.isEmpty<GenderType>(type));

  const Gender._(this.value);
}
