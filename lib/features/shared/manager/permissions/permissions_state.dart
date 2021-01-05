part of 'permissions_cubit.dart';

@freezed
@immutable
abstract class PermissionsState implements _$PermissionsState {
  @protected
  const PermissionsState._();

  const factory PermissionsState({
    @Default(false) bool isLoading,
    @Default(false) bool hasStoragePermissions,
    @Default(None<String>()) Option<String> failure,
  }) = _PermissionsState;
}
