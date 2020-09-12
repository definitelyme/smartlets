// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

// ignore: unused_element
  _AuthFailure call({String code, @required String message}) {
    return _AuthFailure(
      code: code,
      message: message,
    );
  }

// ignore: unused_element
  UnExpectedFailure unExpectedFailure({@required String message}) {
    return UnExpectedFailure(
      message: message,
    );
  }

// ignore: unused_element
  AccountAlreadyExists accountAlreadyExists(
      {@required String message,
      @required EmailAddress email,
      @required AuthProvider provider,
      @required @nullable Object credentials}) {
    return AccountAlreadyExists(
      message: message,
      email: email,
      provider: provider,
      credentials: credentials,
    );
  }
}

// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

mixin _$AuthFailure {
  String get message;

  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String code, String message), {
    @required Result unExpectedFailure(String message),
    @required
        Result accountAlreadyExists(String message, EmailAddress email,
            AuthProvider provider, @nullable Object credentials),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String code, String message), {
    Result unExpectedFailure(String message),
    Result accountAlreadyExists(String message, EmailAddress email,
        AuthProvider provider, @nullable Object credentials),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_AuthFailure value), {
    @required Result unExpectedFailure(UnExpectedFailure value),
    @required Result accountAlreadyExists(AccountAlreadyExists value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_AuthFailure value), {
    Result unExpectedFailure(UnExpectedFailure value),
    Result accountAlreadyExists(AccountAlreadyExists value),
    @required Result orElse(),
  });

  $AuthFailureCopyWith<AuthFailure> get copyWith;
}

abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

abstract class _$AuthFailureCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$AuthFailureCopyWith(
          _AuthFailure value, $Res Function(_AuthFailure) then) =
      __$AuthFailureCopyWithImpl<$Res>;
  @override
  $Res call({String code, String message});
}

class __$AuthFailureCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$AuthFailureCopyWith<$Res> {
  __$AuthFailureCopyWithImpl(
      _AuthFailure _value, $Res Function(_AuthFailure) _then)
      : super(_value, (v) => _then(v as _AuthFailure));

  @override
  _AuthFailure get _value => super._value as _AuthFailure;

  @override
  $Res call({
    Object code = freezed,
    Object message = freezed,
  }) {
    return _then(_AuthFailure(
      code: code == freezed ? _value.code : code as String,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_AuthFailure with DiagnosticableTreeMixin implements _AuthFailure {
  const _$_AuthFailure({this.code, @required this.message})
      : assert(message != null);

  @override
  final String code;
  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure(code: $code, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthFailure &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message);

  @override
  _$AuthFailureCopyWith<_AuthFailure> get copyWith =>
      __$AuthFailureCopyWithImpl<_AuthFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String code, String message), {
    @required Result unExpectedFailure(String message),
    @required
        Result accountAlreadyExists(String message, EmailAddress email,
            AuthProvider provider, @nullable Object credentials),
  }) {
    assert($default != null);
    assert(unExpectedFailure != null);
    assert(accountAlreadyExists != null);
    return $default(code, message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String code, String message), {
    Result unExpectedFailure(String message),
    Result accountAlreadyExists(String message, EmailAddress email,
        AuthProvider provider, @nullable Object credentials),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_AuthFailure value), {
    @required Result unExpectedFailure(UnExpectedFailure value),
    @required Result accountAlreadyExists(AccountAlreadyExists value),
  }) {
    assert($default != null);
    assert(unExpectedFailure != null);
    assert(accountAlreadyExists != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_AuthFailure value), {
    Result unExpectedFailure(UnExpectedFailure value),
    Result accountAlreadyExists(AccountAlreadyExists value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _AuthFailure implements AuthFailure {
  const factory _AuthFailure({String code, @required String message}) =
      _$_AuthFailure;

  String get code;
  @override
  String get message;
  @override
  _$AuthFailureCopyWith<_AuthFailure> get copyWith;
}

abstract class $UnExpectedFailureCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory $UnExpectedFailureCopyWith(
          UnExpectedFailure value, $Res Function(UnExpectedFailure) then) =
      _$UnExpectedFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

class _$UnExpectedFailureCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $UnExpectedFailureCopyWith<$Res> {
  _$UnExpectedFailureCopyWithImpl(
      UnExpectedFailure _value, $Res Function(UnExpectedFailure) _then)
      : super(_value, (v) => _then(v as UnExpectedFailure));

  @override
  UnExpectedFailure get _value => super._value as UnExpectedFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(UnExpectedFailure(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$UnExpectedFailure
    with DiagnosticableTreeMixin
    implements UnExpectedFailure {
  const _$UnExpectedFailure({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.unExpectedFailure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure.unExpectedFailure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnExpectedFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $UnExpectedFailureCopyWith<UnExpectedFailure> get copyWith =>
      _$UnExpectedFailureCopyWithImpl<UnExpectedFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String code, String message), {
    @required Result unExpectedFailure(String message),
    @required
        Result accountAlreadyExists(String message, EmailAddress email,
            AuthProvider provider, @nullable Object credentials),
  }) {
    assert($default != null);
    assert(unExpectedFailure != null);
    assert(accountAlreadyExists != null);
    return unExpectedFailure(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String code, String message), {
    Result unExpectedFailure(String message),
    Result accountAlreadyExists(String message, EmailAddress email,
        AuthProvider provider, @nullable Object credentials),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unExpectedFailure != null) {
      return unExpectedFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_AuthFailure value), {
    @required Result unExpectedFailure(UnExpectedFailure value),
    @required Result accountAlreadyExists(AccountAlreadyExists value),
  }) {
    assert($default != null);
    assert(unExpectedFailure != null);
    assert(accountAlreadyExists != null);
    return unExpectedFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_AuthFailure value), {
    Result unExpectedFailure(UnExpectedFailure value),
    Result accountAlreadyExists(AccountAlreadyExists value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unExpectedFailure != null) {
      return unExpectedFailure(this);
    }
    return orElse();
  }
}

abstract class UnExpectedFailure implements AuthFailure {
  const factory UnExpectedFailure({@required String message}) =
      _$UnExpectedFailure;

  @override
  String get message;
  @override
  $UnExpectedFailureCopyWith<UnExpectedFailure> get copyWith;
}

abstract class $AccountAlreadyExistsCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory $AccountAlreadyExistsCopyWith(AccountAlreadyExists value,
          $Res Function(AccountAlreadyExists) then) =
      _$AccountAlreadyExistsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String message,
      EmailAddress email,
      AuthProvider provider,
      @nullable Object credentials});
}

class _$AccountAlreadyExistsCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $AccountAlreadyExistsCopyWith<$Res> {
  _$AccountAlreadyExistsCopyWithImpl(
      AccountAlreadyExists _value, $Res Function(AccountAlreadyExists) _then)
      : super(_value, (v) => _then(v as AccountAlreadyExists));

  @override
  AccountAlreadyExists get _value => super._value as AccountAlreadyExists;

  @override
  $Res call({
    Object message = freezed,
    Object email = freezed,
    Object provider = freezed,
    Object credentials = freezed,
  }) {
    return _then(AccountAlreadyExists(
      message: message == freezed ? _value.message : message as String,
      email: email == freezed ? _value.email : email as EmailAddress,
      provider:
          provider == freezed ? _value.provider : provider as AuthProvider,
      credentials: credentials == freezed ? _value.credentials : credentials,
    ));
  }
}

class _$AccountAlreadyExists
    with DiagnosticableTreeMixin
    implements AccountAlreadyExists {
  const _$AccountAlreadyExists(
      {@required this.message,
      @required this.email,
      @required this.provider,
      @required @nullable this.credentials})
      : assert(message != null),
        assert(email != null),
        assert(provider != null);

  @override
  final String message;
  @override
  final EmailAddress email;
  @override
  final AuthProvider provider;
  @override
  @nullable
  final Object credentials;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.accountAlreadyExists(message: $message, email: $email, provider: $provider, credentials: $credentials)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure.accountAlreadyExists'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('provider', provider))
      ..add(DiagnosticsProperty('credentials', credentials));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountAlreadyExists &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality()
                    .equals(other.provider, provider)) &&
            (identical(other.credentials, credentials) ||
                const DeepCollectionEquality()
                    .equals(other.credentials, credentials)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(provider) ^
      const DeepCollectionEquality().hash(credentials);

  @override
  $AccountAlreadyExistsCopyWith<AccountAlreadyExists> get copyWith =>
      _$AccountAlreadyExistsCopyWithImpl<AccountAlreadyExists>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String code, String message), {
    @required Result unExpectedFailure(String message),
    @required
        Result accountAlreadyExists(String message, EmailAddress email,
            AuthProvider provider, @nullable Object credentials),
  }) {
    assert($default != null);
    assert(unExpectedFailure != null);
    assert(accountAlreadyExists != null);
    return accountAlreadyExists(message, email, provider, credentials);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String code, String message), {
    Result unExpectedFailure(String message),
    Result accountAlreadyExists(String message, EmailAddress email,
        AuthProvider provider, @nullable Object credentials),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accountAlreadyExists != null) {
      return accountAlreadyExists(message, email, provider, credentials);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_AuthFailure value), {
    @required Result unExpectedFailure(UnExpectedFailure value),
    @required Result accountAlreadyExists(AccountAlreadyExists value),
  }) {
    assert($default != null);
    assert(unExpectedFailure != null);
    assert(accountAlreadyExists != null);
    return accountAlreadyExists(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_AuthFailure value), {
    Result unExpectedFailure(UnExpectedFailure value),
    Result accountAlreadyExists(AccountAlreadyExists value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accountAlreadyExists != null) {
      return accountAlreadyExists(this);
    }
    return orElse();
  }
}

abstract class AccountAlreadyExists implements AuthFailure {
  const factory AccountAlreadyExists(
      {@required String message,
      @required EmailAddress email,
      @required AuthProvider provider,
      @required @nullable Object credentials}) = _$AccountAlreadyExists;

  @override
  String get message;
  EmailAddress get email;
  AuthProvider get provider;
  @nullable
  Object get credentials;
  @override
  $AccountAlreadyExistsCopyWith<AccountAlreadyExists> get copyWith;
}
