import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';
import 'package:smartlets/features/shared/shared.dart';

part 'guardian.freezed.dart';

@freezed
@immutable
abstract class Guardian implements _$Guardian, BaseUser {
  const Guardian._();

  const factory Guardian({
    @nullable Roles role,
    @nullable UniqueId id,
    @nullable DisplayName displayName,
    @nullable EmailAddress email,
    @nullable AuthProviders providers,
    @nullable bool isEmailVerified,
    @nullable ImmutableIds childrenIds,
    @nullable Phone phone,
    @nullable String photoURL,
    @nullable DateTime createdAt,
    @nullable DateTime lastSeenAt,
    @nullable DateTime updatedAt,
  }) = _Guardian;

  Option<FieldObjectException<dynamic>> get failureOption {
    return email?.failureOrUnit
        ?.andThen(displayName?.failureOrUnit)
        ?.andThen(childrenIds?.failureOrUnit)
        ?.andThen(phone?.failureOrUnit)
        ?.fold((f) => some(f), (_) => none());
  }
}
