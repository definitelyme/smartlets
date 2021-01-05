// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of task_progress;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TaskProgressTearOff {
  const _$TaskProgressTearOff();

// ignore: unused_element
  _TaskProgress call(
      {@nullable num progress = 0,
      @nullable Metadata metadata,
      @nullable TaskState state = TaskState.cancelled,
      @nullable String downloadUrl,
      @nullable @JsonKey(ignore: true) bool isRunning = false}) {
    return _TaskProgress(
      progress: progress,
      metadata: metadata,
      state: state,
      downloadUrl: downloadUrl,
      isRunning: isRunning,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TaskProgress = _$TaskProgressTearOff();

/// @nodoc
mixin _$TaskProgress {
  @nullable
  num get progress;
  @nullable
  Metadata get metadata;
  @nullable
  TaskState get state;
  @nullable
  String get downloadUrl;
  @nullable
  @JsonKey(ignore: true)
  bool get isRunning;

  $TaskProgressCopyWith<TaskProgress> get copyWith;
}

/// @nodoc
abstract class $TaskProgressCopyWith<$Res> {
  factory $TaskProgressCopyWith(
          TaskProgress value, $Res Function(TaskProgress) then) =
      _$TaskProgressCopyWithImpl<$Res>;
  $Res call(
      {@nullable num progress,
      @nullable Metadata metadata,
      @nullable TaskState state,
      @nullable String downloadUrl,
      @nullable @JsonKey(ignore: true) bool isRunning});

  $MetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$TaskProgressCopyWithImpl<$Res> implements $TaskProgressCopyWith<$Res> {
  _$TaskProgressCopyWithImpl(this._value, this._then);

  final TaskProgress _value;
  // ignore: unused_field
  final $Res Function(TaskProgress) _then;

  @override
  $Res call({
    Object progress = freezed,
    Object metadata = freezed,
    Object state = freezed,
    Object downloadUrl = freezed,
    Object isRunning = freezed,
  }) {
    return _then(_value.copyWith(
      progress: progress == freezed ? _value.progress : progress as num,
      metadata: metadata == freezed ? _value.metadata : metadata as Metadata,
      state: state == freezed ? _value.state : state as TaskState,
      downloadUrl:
          downloadUrl == freezed ? _value.downloadUrl : downloadUrl as String,
      isRunning: isRunning == freezed ? _value.isRunning : isRunning as bool,
    ));
  }

  @override
  $MetadataCopyWith<$Res> get metadata {
    if (_value.metadata == null) {
      return null;
    }
    return $MetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value));
    });
  }
}

/// @nodoc
abstract class _$TaskProgressCopyWith<$Res>
    implements $TaskProgressCopyWith<$Res> {
  factory _$TaskProgressCopyWith(
          _TaskProgress value, $Res Function(_TaskProgress) then) =
      __$TaskProgressCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable num progress,
      @nullable Metadata metadata,
      @nullable TaskState state,
      @nullable String downloadUrl,
      @nullable @JsonKey(ignore: true) bool isRunning});

  @override
  $MetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$TaskProgressCopyWithImpl<$Res> extends _$TaskProgressCopyWithImpl<$Res>
    implements _$TaskProgressCopyWith<$Res> {
  __$TaskProgressCopyWithImpl(
      _TaskProgress _value, $Res Function(_TaskProgress) _then)
      : super(_value, (v) => _then(v as _TaskProgress));

  @override
  _TaskProgress get _value => super._value as _TaskProgress;

  @override
  $Res call({
    Object progress = freezed,
    Object metadata = freezed,
    Object state = freezed,
    Object downloadUrl = freezed,
    Object isRunning = freezed,
  }) {
    return _then(_TaskProgress(
      progress: progress == freezed ? _value.progress : progress as num,
      metadata: metadata == freezed ? _value.metadata : metadata as Metadata,
      state: state == freezed ? _value.state : state as TaskState,
      downloadUrl:
          downloadUrl == freezed ? _value.downloadUrl : downloadUrl as String,
      isRunning: isRunning == freezed ? _value.isRunning : isRunning as bool,
    ));
  }
}

/// @nodoc
class _$_TaskProgress extends _TaskProgress {
  const _$_TaskProgress(
      {@nullable this.progress = 0,
      @nullable this.metadata,
      @nullable this.state = TaskState.cancelled,
      @nullable this.downloadUrl,
      @nullable @JsonKey(ignore: true) this.isRunning = false})
      : super._();

  @JsonKey(defaultValue: 0)
  @override
  @nullable
  final num progress;
  @override
  @nullable
  final Metadata metadata;
  @JsonKey(defaultValue: TaskState.cancelled)
  @override
  @nullable
  final TaskState state;
  @override
  @nullable
  final String downloadUrl;
  @override
  @nullable
  @JsonKey(ignore: true)
  final bool isRunning;

  @override
  String toString() {
    return 'TaskProgress(progress: $progress, metadata: $metadata, state: $state, downloadUrl: $downloadUrl, isRunning: $isRunning)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskProgress &&
            (identical(other.progress, progress) ||
                const DeepCollectionEquality()
                    .equals(other.progress, progress)) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality()
                    .equals(other.metadata, metadata)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.downloadUrl, downloadUrl) ||
                const DeepCollectionEquality()
                    .equals(other.downloadUrl, downloadUrl)) &&
            (identical(other.isRunning, isRunning) ||
                const DeepCollectionEquality()
                    .equals(other.isRunning, isRunning)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(progress) ^
      const DeepCollectionEquality().hash(metadata) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(downloadUrl) ^
      const DeepCollectionEquality().hash(isRunning);

  @override
  _$TaskProgressCopyWith<_TaskProgress> get copyWith =>
      __$TaskProgressCopyWithImpl<_TaskProgress>(this, _$identity);
}

abstract class _TaskProgress extends TaskProgress {
  const _TaskProgress._() : super._();
  const factory _TaskProgress(
      {@nullable num progress,
      @nullable Metadata metadata,
      @nullable TaskState state,
      @nullable String downloadUrl,
      @nullable @JsonKey(ignore: true) bool isRunning}) = _$_TaskProgress;

  @override
  @nullable
  num get progress;
  @override
  @nullable
  Metadata get metadata;
  @override
  @nullable
  TaskState get state;
  @override
  @nullable
  String get downloadUrl;
  @override
  @nullable
  @JsonKey(ignore: true)
  bool get isRunning;
  @override
  _$TaskProgressCopyWith<_TaskProgress> get copyWith;
}
