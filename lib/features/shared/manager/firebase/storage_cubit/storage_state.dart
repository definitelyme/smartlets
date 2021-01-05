part of 'storage_cubit.dart';

@freezed
@immutable
abstract class StorageState implements _$StorageState {
  @protected
  const StorageState._();

  const factory StorageState({
    @Default(false) bool isLoading,
    @nullable TaskProgress uploadTask,
    @nullable TaskProgress downloadTask,
    @Default(None()) Option<FirebaseStorageFailure> failure,
  }) = _StorageState;

  factory StorageState.init() => StorageState();
}
