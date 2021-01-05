// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'storage_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StorageStateTearOff {
  const _$StorageStateTearOff();

// ignore: unused_element
  _StorageState call(
      {bool isLoading = false,
      @nullable TaskProgress uploadTask,
      @nullable TaskProgress downloadTask,
      Option<FirebaseStorageFailure> failure = const None()}) {
    return _StorageState(
      isLoading: isLoading,
      uploadTask: uploadTask,
      downloadTask: downloadTask,
      failure: failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $StorageState = _$StorageStateTearOff();

/// @nodoc
mixin _$StorageState {
  bool get isLoading;
  @nullable
  TaskProgress get uploadTask;
  @nullable
  TaskProgress get downloadTask;
  Option<FirebaseStorageFailure> get failure;

  $StorageStateCopyWith<StorageState> get copyWith;
}

/// @nodoc
abstract class $StorageStateCopyWith<$Res> {
  factory $StorageStateCopyWith(
          StorageState value, $Res Function(StorageState) then) =
      _$StorageStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      @nullable TaskProgress uploadTask,
      @nullable TaskProgress downloadTask,
      Option<FirebaseStorageFailure> failure});

  $TaskProgressCopyWith<$Res> get uploadTask;
  $TaskProgressCopyWith<$Res> get downloadTask;
}

/// @nodoc
class _$StorageStateCopyWithImpl<$Res> implements $StorageStateCopyWith<$Res> {
  _$StorageStateCopyWithImpl(this._value, this._then);

  final StorageState _value;
  // ignore: unused_field
  final $Res Function(StorageState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object uploadTask = freezed,
    Object downloadTask = freezed,
    Object failure = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      uploadTask: uploadTask == freezed
          ? _value.uploadTask
          : uploadTask as TaskProgress,
      downloadTask: downloadTask == freezed
          ? _value.downloadTask
          : downloadTask as TaskProgress,
      failure: failure == freezed
          ? _value.failure
          : failure as Option<FirebaseStorageFailure>,
    ));
  }

  @override
  $TaskProgressCopyWith<$Res> get uploadTask {
    if (_value.uploadTask == null) {
      return null;
    }
    return $TaskProgressCopyWith<$Res>(_value.uploadTask, (value) {
      return _then(_value.copyWith(uploadTask: value));
    });
  }

  @override
  $TaskProgressCopyWith<$Res> get downloadTask {
    if (_value.downloadTask == null) {
      return null;
    }
    return $TaskProgressCopyWith<$Res>(_value.downloadTask, (value) {
      return _then(_value.copyWith(downloadTask: value));
    });
  }
}

/// @nodoc
abstract class _$StorageStateCopyWith<$Res>
    implements $StorageStateCopyWith<$Res> {
  factory _$StorageStateCopyWith(
          _StorageState value, $Res Function(_StorageState) then) =
      __$StorageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      @nullable TaskProgress uploadTask,
      @nullable TaskProgress downloadTask,
      Option<FirebaseStorageFailure> failure});

  @override
  $TaskProgressCopyWith<$Res> get uploadTask;
  @override
  $TaskProgressCopyWith<$Res> get downloadTask;
}

/// @nodoc
class __$StorageStateCopyWithImpl<$Res> extends _$StorageStateCopyWithImpl<$Res>
    implements _$StorageStateCopyWith<$Res> {
  __$StorageStateCopyWithImpl(
      _StorageState _value, $Res Function(_StorageState) _then)
      : super(_value, (v) => _then(v as _StorageState));

  @override
  _StorageState get _value => super._value as _StorageState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object uploadTask = freezed,
    Object downloadTask = freezed,
    Object failure = freezed,
  }) {
    return _then(_StorageState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      uploadTask: uploadTask == freezed
          ? _value.uploadTask
          : uploadTask as TaskProgress,
      downloadTask: downloadTask == freezed
          ? _value.downloadTask
          : downloadTask as TaskProgress,
      failure: failure == freezed
          ? _value.failure
          : failure as Option<FirebaseStorageFailure>,
    ));
  }
}

/// @nodoc
class _$_StorageState extends _StorageState {
  const _$_StorageState(
      {this.isLoading = false,
      @nullable this.uploadTask,
      @nullable this.downloadTask,
      this.failure = const None()})
      : assert(isLoading != null),
        assert(failure != null),
        super._();

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @override
  @nullable
  final TaskProgress uploadTask;
  @override
  @nullable
  final TaskProgress downloadTask;
  @JsonKey(defaultValue: const None())
  @override
  final Option<FirebaseStorageFailure> failure;

  @override
  String toString() {
    return 'StorageState(isLoading: $isLoading, uploadTask: $uploadTask, downloadTask: $downloadTask, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StorageState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.uploadTask, uploadTask) ||
                const DeepCollectionEquality()
                    .equals(other.uploadTask, uploadTask)) &&
            (identical(other.downloadTask, downloadTask) ||
                const DeepCollectionEquality()
                    .equals(other.downloadTask, downloadTask)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(uploadTask) ^
      const DeepCollectionEquality().hash(downloadTask) ^
      const DeepCollectionEquality().hash(failure);

  @override
  _$StorageStateCopyWith<_StorageState> get copyWith =>
      __$StorageStateCopyWithImpl<_StorageState>(this, _$identity);
}

abstract class _StorageState extends StorageState {
  const _StorageState._() : super._();
  const factory _StorageState(
      {bool isLoading,
      @nullable TaskProgress uploadTask,
      @nullable TaskProgress downloadTask,
      Option<FirebaseStorageFailure> failure}) = _$_StorageState;

  @override
  bool get isLoading;
  @override
  @nullable
  TaskProgress get uploadTask;
  @override
  @nullable
  TaskProgress get downloadTask;
  @override
  Option<FirebaseStorageFailure> get failure;
  @override
  _$StorageStateCopyWith<_StorageState> get copyWith;
}
