// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'permissions_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PermissionsStateTearOff {
  const _$PermissionsStateTearOff();

// ignore: unused_element
  _PermissionsState call(
      {bool isLoading = false,
      bool hasStoragePermissions = false,
      Option<String> failure = const None<String>()}) {
    return _PermissionsState(
      isLoading: isLoading,
      hasStoragePermissions: hasStoragePermissions,
      failure: failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PermissionsState = _$PermissionsStateTearOff();

/// @nodoc
mixin _$PermissionsState {
  bool get isLoading;
  bool get hasStoragePermissions;
  Option<String> get failure;

  $PermissionsStateCopyWith<PermissionsState> get copyWith;
}

/// @nodoc
abstract class $PermissionsStateCopyWith<$Res> {
  factory $PermissionsStateCopyWith(
          PermissionsState value, $Res Function(PermissionsState) then) =
      _$PermissionsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading, bool hasStoragePermissions, Option<String> failure});
}

/// @nodoc
class _$PermissionsStateCopyWithImpl<$Res>
    implements $PermissionsStateCopyWith<$Res> {
  _$PermissionsStateCopyWithImpl(this._value, this._then);

  final PermissionsState _value;
  // ignore: unused_field
  final $Res Function(PermissionsState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object hasStoragePermissions = freezed,
    Object failure = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      hasStoragePermissions: hasStoragePermissions == freezed
          ? _value.hasStoragePermissions
          : hasStoragePermissions as bool,
      failure: failure == freezed ? _value.failure : failure as Option<String>,
    ));
  }
}

/// @nodoc
abstract class _$PermissionsStateCopyWith<$Res>
    implements $PermissionsStateCopyWith<$Res> {
  factory _$PermissionsStateCopyWith(
          _PermissionsState value, $Res Function(_PermissionsState) then) =
      __$PermissionsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading, bool hasStoragePermissions, Option<String> failure});
}

/// @nodoc
class __$PermissionsStateCopyWithImpl<$Res>
    extends _$PermissionsStateCopyWithImpl<$Res>
    implements _$PermissionsStateCopyWith<$Res> {
  __$PermissionsStateCopyWithImpl(
      _PermissionsState _value, $Res Function(_PermissionsState) _then)
      : super(_value, (v) => _then(v as _PermissionsState));

  @override
  _PermissionsState get _value => super._value as _PermissionsState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object hasStoragePermissions = freezed,
    Object failure = freezed,
  }) {
    return _then(_PermissionsState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      hasStoragePermissions: hasStoragePermissions == freezed
          ? _value.hasStoragePermissions
          : hasStoragePermissions as bool,
      failure: failure == freezed ? _value.failure : failure as Option<String>,
    ));
  }
}

/// @nodoc
class _$_PermissionsState extends _PermissionsState {
  const _$_PermissionsState(
      {this.isLoading = false,
      this.hasStoragePermissions = false,
      this.failure = const None<String>()})
      : assert(isLoading != null),
        assert(hasStoragePermissions != null),
        assert(failure != null),
        super._();

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool hasStoragePermissions;
  @JsonKey(defaultValue: const None<String>())
  @override
  final Option<String> failure;

  @override
  String toString() {
    return 'PermissionsState(isLoading: $isLoading, hasStoragePermissions: $hasStoragePermissions, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PermissionsState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.hasStoragePermissions, hasStoragePermissions) ||
                const DeepCollectionEquality().equals(
                    other.hasStoragePermissions, hasStoragePermissions)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(hasStoragePermissions) ^
      const DeepCollectionEquality().hash(failure);

  @override
  _$PermissionsStateCopyWith<_PermissionsState> get copyWith =>
      __$PermissionsStateCopyWithImpl<_PermissionsState>(this, _$identity);
}

abstract class _PermissionsState extends PermissionsState {
  const _PermissionsState._() : super._();
  const factory _PermissionsState(
      {bool isLoading,
      bool hasStoragePermissions,
      Option<String> failure}) = _$_PermissionsState;

  @override
  bool get isLoading;
  @override
  bool get hasStoragePermissions;
  @override
  Option<String> get failure;
  @override
  _$PermissionsStateCopyWith<_PermissionsState> get copyWith;
}
