import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';
import 'package:smartlets/features/shared/domain/entities/unique_id.dart';
import 'package:smartlets/features/shared/shared.dart';

part 'instructor.freezed.dart';

@freezed
@immutable
abstract class Instructor implements _$Instructor {
  const Instructor._();

  const factory Instructor({
    @required UniqueId id,
    @required @nullable DisplayName displayName,
    @required EmailAddress email,
    @required Biography bio,
    @required Specialty specialty,
    @required bool isEmailVerified,
    @required @nullable String phone,
    @required @nullable String photoURL,
    @required DateTime createdAt,
    @required DateTime lastSeenAt,
  }) = _Instructor;
}
