import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartlets/features/shared/shared.dart';

class Specialty extends FieldObject<String> {
  final Either<FieldObjectException<String>, String> value;

  factory Specialty({@required String input}) {
    assert(input != null);
    return Specialty._(Validator.isEmpty(input));
  }

  const Specialty._([this.value]);
}
