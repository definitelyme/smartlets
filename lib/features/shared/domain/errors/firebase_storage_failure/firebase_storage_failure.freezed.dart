// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of firebase_storage_failure;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FirebaseStorageFailureTearOff {
  const _$FirebaseStorageFailureTearOff();

// ignore: unused_element
  _FirebaseStorageFailure call(String message,
      {String title, String errorCode}) {
    return _FirebaseStorageFailure(
      message,
      title: title,
      errorCode: errorCode,
    );
  }

// ignore: unused_element
  _UnknownStorageFailure unknown(
      {String title,
      String message = 'A fatal failure occurred!',
      String errorCode}) {
    return _UnknownStorageFailure(
      title: title,
      message: message,
      errorCode: errorCode,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FirebaseStorageFailure = _$FirebaseStorageFailureTearOff();

/// @nodoc
mixin _$FirebaseStorageFailure {
  String get message;
  String get title;
  String get errorCode;

  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(String message, String title, String errorCode), {
    @required TResult unknown(String title, String message, String errorCode),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(String message, String title, String errorCode), {
    TResult unknown(String title, String message, String errorCode),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_FirebaseStorageFailure value), {
    @required TResult unknown(_UnknownStorageFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_FirebaseStorageFailure value), {
    TResult unknown(_UnknownStorageFailure value),
    @required TResult orElse(),
  });

  $FirebaseStorageFailureCopyWith<FirebaseStorageFailure> get copyWith;
}

/// @nodoc
abstract class $FirebaseStorageFailureCopyWith<$Res> {
  factory $FirebaseStorageFailureCopyWith(FirebaseStorageFailure value,
          $Res Function(FirebaseStorageFailure) then) =
      _$FirebaseStorageFailureCopyWithImpl<$Res>;
  $Res call({String message, String title, String errorCode});
}

/// @nodoc
class _$FirebaseStorageFailureCopyWithImpl<$Res>
    implements $FirebaseStorageFailureCopyWith<$Res> {
  _$FirebaseStorageFailureCopyWithImpl(this._value, this._then);

  final FirebaseStorageFailure _value;
  // ignore: unused_field
  final $Res Function(FirebaseStorageFailure) _then;

  @override
  $Res call({
    Object message = freezed,
    Object title = freezed,
    Object errorCode = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
      title: title == freezed ? _value.title : title as String,
      errorCode: errorCode == freezed ? _value.errorCode : errorCode as String,
    ));
  }
}

/// @nodoc
abstract class _$FirebaseStorageFailureCopyWith<$Res>
    implements $FirebaseStorageFailureCopyWith<$Res> {
  factory _$FirebaseStorageFailureCopyWith(_FirebaseStorageFailure value,
          $Res Function(_FirebaseStorageFailure) then) =
      __$FirebaseStorageFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message, String title, String errorCode});
}

/// @nodoc
class __$FirebaseStorageFailureCopyWithImpl<$Res>
    extends _$FirebaseStorageFailureCopyWithImpl<$Res>
    implements _$FirebaseStorageFailureCopyWith<$Res> {
  __$FirebaseStorageFailureCopyWithImpl(_FirebaseStorageFailure _value,
      $Res Function(_FirebaseStorageFailure) _then)
      : super(_value, (v) => _then(v as _FirebaseStorageFailure));

  @override
  _FirebaseStorageFailure get _value => super._value as _FirebaseStorageFailure;

  @override
  $Res call({
    Object message = freezed,
    Object title = freezed,
    Object errorCode = freezed,
  }) {
    return _then(_FirebaseStorageFailure(
      message == freezed ? _value.message : message as String,
      title: title == freezed ? _value.title : title as String,
      errorCode: errorCode == freezed ? _value.errorCode : errorCode as String,
    ));
  }
}

/// @nodoc
class _$_FirebaseStorageFailure extends _FirebaseStorageFailure {
  const _$_FirebaseStorageFailure(this.message, {this.title, this.errorCode})
      : assert(message != null),
        super._();

  @override
  final String message;
  @override
  final String title;
  @override
  final String errorCode;

  @override
  String toString() {
    return 'FirebaseStorageFailure(message: $message, title: $title, errorCode: $errorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FirebaseStorageFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(errorCode);

  @override
  _$FirebaseStorageFailureCopyWith<_FirebaseStorageFailure> get copyWith =>
      __$FirebaseStorageFailureCopyWithImpl<_FirebaseStorageFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(String message, String title, String errorCode), {
    @required TResult unknown(String title, String message, String errorCode),
  }) {
    assert($default != null);
    assert(unknown != null);
    return $default(message, title, errorCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(String message, String title, String errorCode), {
    TResult unknown(String title, String message, String errorCode),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(message, title, errorCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_FirebaseStorageFailure value), {
    @required TResult unknown(_UnknownStorageFailure value),
  }) {
    assert($default != null);
    assert(unknown != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_FirebaseStorageFailure value), {
    TResult unknown(_UnknownStorageFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _FirebaseStorageFailure extends FirebaseStorageFailure {
  const _FirebaseStorageFailure._() : super._();
  const factory _FirebaseStorageFailure(String message,
      {String title, String errorCode}) = _$_FirebaseStorageFailure;

  @override
  String get message;
  @override
  String get title;
  @override
  String get errorCode;
  @override
  _$FirebaseStorageFailureCopyWith<_FirebaseStorageFailure> get copyWith;
}

/// @nodoc
abstract class _$UnknownStorageFailureCopyWith<$Res>
    implements $FirebaseStorageFailureCopyWith<$Res> {
  factory _$UnknownStorageFailureCopyWith(_UnknownStorageFailure value,
          $Res Function(_UnknownStorageFailure) then) =
      __$UnknownStorageFailureCopyWithImpl<$Res>;
  @override
  $Res call({String title, String message, String errorCode});
}

/// @nodoc
class __$UnknownStorageFailureCopyWithImpl<$Res>
    extends _$FirebaseStorageFailureCopyWithImpl<$Res>
    implements _$UnknownStorageFailureCopyWith<$Res> {
  __$UnknownStorageFailureCopyWithImpl(_UnknownStorageFailure _value,
      $Res Function(_UnknownStorageFailure) _then)
      : super(_value, (v) => _then(v as _UnknownStorageFailure));

  @override
  _UnknownStorageFailure get _value => super._value as _UnknownStorageFailure;

  @override
  $Res call({
    Object title = freezed,
    Object message = freezed,
    Object errorCode = freezed,
  }) {
    return _then(_UnknownStorageFailure(
      title: title == freezed ? _value.title : title as String,
      message: message == freezed ? _value.message : message as String,
      errorCode: errorCode == freezed ? _value.errorCode : errorCode as String,
    ));
  }
}

/// @nodoc
class _$_UnknownStorageFailure extends _UnknownStorageFailure {
  const _$_UnknownStorageFailure(
      {this.title, this.message = 'A fatal failure occurred!', this.errorCode})
      : assert(message != null),
        super._();

  @override
  final String title;
  @JsonKey(defaultValue: 'A fatal failure occurred!')
  @override
  final String message;
  @override
  final String errorCode;

  @override
  String toString() {
    return 'FirebaseStorageFailure.unknown(title: $title, message: $message, errorCode: $errorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnknownStorageFailure &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(errorCode);

  @override
  _$UnknownStorageFailureCopyWith<_UnknownStorageFailure> get copyWith =>
      __$UnknownStorageFailureCopyWithImpl<_UnknownStorageFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(String message, String title, String errorCode), {
    @required TResult unknown(String title, String message, String errorCode),
  }) {
    assert($default != null);
    assert(unknown != null);
    return unknown(title, message, errorCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(String message, String title, String errorCode), {
    TResult unknown(String title, String message, String errorCode),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown(title, message, errorCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_FirebaseStorageFailure value), {
    @required TResult unknown(_UnknownStorageFailure value),
  }) {
    assert($default != null);
    assert(unknown != null);
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_FirebaseStorageFailure value), {
    TResult unknown(_UnknownStorageFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _UnknownStorageFailure extends FirebaseStorageFailure {
  const _UnknownStorageFailure._() : super._();
  const factory _UnknownStorageFailure(
      {String title,
      String message,
      String errorCode}) = _$_UnknownStorageFailure;

  @override
  String get title;
  @override
  String get message;
  @override
  String get errorCode;
  @override
  _$UnknownStorageFailureCopyWith<_UnknownStorageFailure> get copyWith;
}
