// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'field_object_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FieldObjectExceptionTearOff {
  const _$FieldObjectExceptionTearOff();

// ignore: unused_element
  _FieldObjectException<T> call<T>({@required String message}) {
    return _FieldObjectException<T>(
      message: message,
    );
  }
}

// ignore: unused_element
const $FieldObjectException = _$FieldObjectExceptionTearOff();

mixin _$FieldObjectException<T> {
  String get message;

  $FieldObjectExceptionCopyWith<T, FieldObjectException<T>> get copyWith;
}

abstract class $FieldObjectExceptionCopyWith<T, $Res> {
  factory $FieldObjectExceptionCopyWith(FieldObjectException<T> value,
          $Res Function(FieldObjectException<T>) then) =
      _$FieldObjectExceptionCopyWithImpl<T, $Res>;
  $Res call({String message});
}

class _$FieldObjectExceptionCopyWithImpl<T, $Res>
    implements $FieldObjectExceptionCopyWith<T, $Res> {
  _$FieldObjectExceptionCopyWithImpl(this._value, this._then);

  final FieldObjectException<T> _value;
  // ignore: unused_field
  final $Res Function(FieldObjectException<T>) _then;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

abstract class _$FieldObjectExceptionCopyWith<T, $Res>
    implements $FieldObjectExceptionCopyWith<T, $Res> {
  factory _$FieldObjectExceptionCopyWith(_FieldObjectException<T> value,
          $Res Function(_FieldObjectException<T>) then) =
      __$FieldObjectExceptionCopyWithImpl<T, $Res>;
  @override
  $Res call({String message});
}

class __$FieldObjectExceptionCopyWithImpl<T, $Res>
    extends _$FieldObjectExceptionCopyWithImpl<T, $Res>
    implements _$FieldObjectExceptionCopyWith<T, $Res> {
  __$FieldObjectExceptionCopyWithImpl(_FieldObjectException<T> _value,
      $Res Function(_FieldObjectException<T>) _then)
      : super(_value, (v) => _then(v as _FieldObjectException<T>));

  @override
  _FieldObjectException<T> get _value =>
      super._value as _FieldObjectException<T>;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_FieldObjectException<T>(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_FieldObjectException<T>
    with DiagnosticableTreeMixin
    implements _FieldObjectException<T> {
  const _$_FieldObjectException({@required this.message})
      : assert(message != null);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FieldObjectException<$T>(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FieldObjectException<$T>'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FieldObjectException<T> &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$FieldObjectExceptionCopyWith<T, _FieldObjectException<T>> get copyWith =>
      __$FieldObjectExceptionCopyWithImpl<T, _FieldObjectException<T>>(
          this, _$identity);
}

abstract class _FieldObjectException<T> implements FieldObjectException<T> {
  const factory _FieldObjectException({@required String message}) =
      _$_FieldObjectException<T>;

  @override
  String get message;
  @override
  _$FieldObjectExceptionCopyWith<T, _FieldObjectException<T>> get copyWith;
}
