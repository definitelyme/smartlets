import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';
import 'package:smartlets/features/shared/shared.dart';

part 'student.freezed.dart';

@freezed
@immutable
abstract class Student implements _$Student {
  const Student._();

  const factory Student({
    @required UniqueId id,
    @required @nullable DisplayName displayName,
    @required EmailAddress email,
    @required @nullable EmailAddress guardianEmail,
    @required Gender gender,
    @Default(KtList.empty()) KtList<UniqueId> courseIds,
    @Default(KtList.empty()) KtList<UniqueId> projectIds,
    @Default(KtList.empty()) KtList<UniqueId> awardIds,
    @required bool isEmailVerified,
    @required @nullable String phone,
    @required @nullable String guardianPhone,
    @required @nullable String photoURL,
    @required DateTime createdAt,
    @required DateTime lastSeenAt,
  }) = _Student;
}
