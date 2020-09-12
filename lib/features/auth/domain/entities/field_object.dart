import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';

@immutable
abstract class FieldObject<T> {
  const FieldObject();

  Either<FieldObjectException<T>, T> get value;

  bool isEqualTo(String other, {bool inMemory = false}) {
    if (this.isValid) {
      if (inMemory) return identical(this.getOrCrash, other);
      return this.getOrCrash == other;
    }
    return false;
  }

  bool get isValid => value.isRight();

  T get getOrCrash => value.fold((failure) => throw UnExpectedFailure(message: failure.message), id);

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    return other is FieldObject && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => "FieldObject<$T>(${value.getOrElse(() => null).toString()})";
}
