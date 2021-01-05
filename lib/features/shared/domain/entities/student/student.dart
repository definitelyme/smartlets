import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';
import 'package:smartlets/features/shared/shared.dart';

part 'student.freezed.dart';

@freezed
@immutable
abstract class Student implements _$Student, BaseUser {
  const Student._();

  const factory Student({
    @nullable Roles role,
    @nullable UniqueId id,
    @nullable DisplayName displayName,
    @nullable EmailAddress email,
    @nullable AuthProviders providers,
    @nullable EmailAddress guardianEmail,
    @nullable Gender gender,
    @nullable ImmutableIds courseIds,
    @nullable ImmutableIds projectIds,
    @nullable ImmutableIds awardIds,
    @nullable bool isEmailVerified,
    @nullable Phone phone,
    @nullable Phone guardianPhone,
    @nullable String photoURL,
    @nullable DateTime createdAt,
    @nullable DateTime lastSeenAt,
    @nullable DateTime updatedAt,
  }) = _Student;

  Option<FieldObjectException<dynamic>> get failureOption {
    return email?.failureOrUnit
        ?.andThen(displayName?.failureOrUnit)
        ?.andThen(guardianEmail?.failureOrUnit)
        ?.andThen(gender?.failureOrUnit)
        ?.andThen(courseIds?.failureOrUnit)
        ?.andThen(projectIds?.failureOrUnit)
        ?.andThen(awardIds?.failureOrUnit)
        ?.andThen(phone?.failureOrUnit)
        ?.andThen(guardianPhone?.failureOrUnit)
        ?.fold((f) => some(f), (_) => none());
  }
}
