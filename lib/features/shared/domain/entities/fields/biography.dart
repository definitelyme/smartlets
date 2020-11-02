import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:smartlets/features/shared/shared.dart';

class Biography extends FieldObject<String> {
  final Either<FieldObjectException<String>, String> value;

  factory Biography({@required String input}) {
    assert(input != null);
    return Biography._(Validator.isEmpty(input));
  }

  const Biography._([this.value]);
}
