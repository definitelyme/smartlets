// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

// ignore: unused_element
  _DisplayNameChanged displayNameChanged(String input) {
    return _DisplayNameChanged(
      input,
    );
  }

// ignore: unused_element
  _EmailChanged emailChanged(String email) {
    return _EmailChanged(
      email,
    );
  }

// ignore: unused_element
  _GuardianEmailChanged guardianEmailChanged(String email) {
    return _GuardianEmailChanged(
      email,
    );
  }

// ignore: unused_element
  _GenderChanged genderChanged(GenderType gender) {
    return _GenderChanged(
      gender,
    );
  }

// ignore: unused_element
  _PasswordChanged passwordChanged(String password, {FIELD_VALIDATION mode}) {
    return _PasswordChanged(
      password,
      mode: mode,
    );
  }

// ignore: unused_element
  _NewPasswordChanged newPasswordChanged(String newPassword,
      {FIELD_VALIDATION mode}) {
    return _NewPasswordChanged(
      newPassword,
      mode: mode,
    );
  }

// ignore: unused_element
  _ToggledPasswordVisibility toggledPasswordVisibility() {
    return const _ToggledPasswordVisibility();
  }

// ignore: unused_element
  _ToggledSnackBarVisibility toggledSnackBarVisibility([bool value]) {
    return _ToggledSnackBarVisibility(
      value,
    );
  }

// ignore: unused_element
  _SignInWithEmailAndPassword signInWithEmailAndPassword() {
    return const _SignInWithEmailAndPassword();
  }

// ignore: unused_element
  _CreateAccountWithEmailAndPassword createAccountWithEmailAndPassword() {
    return const _CreateAccountWithEmailAndPassword();
  }

// ignore: unused_element
  _CreateInstructorAccount createInstructorAccount() {
    return const _CreateInstructorAccount();
  }

// ignore: unused_element
  _CreateStudentAccount createStudentAccount() {
    return const _CreateStudentAccount();
  }

// ignore: unused_element
  _UpdateProfile updateProfile() {
    return const _UpdateProfile();
  }

// ignore: unused_element
  _EmailPasswordReset emailPasswordReset() {
    return const _EmailPasswordReset();
  }

// ignore: unused_element
  _UpdatePassword updatePassword() {
    return const _UpdatePassword();
  }

// ignore: unused_element
  _SignInWithGoogle signInWithGoogle([@nullable Object incoming]) {
    return _SignInWithGoogle(
      incoming,
    );
  }

// ignore: unused_element
  _SignInWithFacebook signInWithFacebook([@nullable Object incoming]) {
    return _SignInWithFacebook(
      incoming,
    );
  }

// ignore: unused_element
  _SignInWithTwitter signInWithTwitter([@nullable Object incoming]) {
    return _SignInWithTwitter(
      incoming,
    );
  }

// ignore: unused_element
  _SignInWithCredentials signInWithCredentials(
      {@nullable Object credential,
      @nullable AuthProvider provider,
      @nullable Object incoming}) {
    return _SignInWithCredentials(
      credential: credential,
      provider: provider,
      incoming: incoming,
    );
  }

// ignore: unused_element
  _SignOut signOut() {
    return const _SignOut();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result displayNameChanged(String input),
    @required Result emailChanged(String email),
    @required Result guardianEmailChanged(String email),
    @required Result genderChanged(GenderType gender),
    @required Result passwordChanged(String password, FIELD_VALIDATION mode),
    @required
        Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    @required Result toggledPasswordVisibility(),
    @required Result toggledSnackBarVisibility(bool value),
    @required Result signInWithEmailAndPassword(),
    @required Result createAccountWithEmailAndPassword(),
    @required Result createInstructorAccount(),
    @required Result createStudentAccount(),
    @required Result updateProfile(),
    @required Result emailPasswordReset(),
    @required Result updatePassword(),
    @required Result signInWithGoogle(@nullable Object incoming),
    @required Result signInWithFacebook(@nullable Object incoming),
    @required Result signInWithTwitter(@nullable Object incoming),
    @required
        Result signInWithCredentials(@nullable Object credential,
            @nullable AuthProvider provider, @nullable Object incoming),
    @required Result signOut(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result displayNameChanged(String input),
    Result emailChanged(String email),
    Result guardianEmailChanged(String email),
    Result genderChanged(GenderType gender),
    Result passwordChanged(String password, FIELD_VALIDATION mode),
    Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    Result toggledPasswordVisibility(),
    Result toggledSnackBarVisibility(bool value),
    Result signInWithEmailAndPassword(),
    Result createAccountWithEmailAndPassword(),
    Result createInstructorAccount(),
    Result createStudentAccount(),
    Result updateProfile(),
    Result emailPasswordReset(),
    Result updatePassword(),
    Result signInWithGoogle(@nullable Object incoming),
    Result signInWithFacebook(@nullable Object incoming),
    Result signInWithTwitter(@nullable Object incoming),
    Result signInWithCredentials(@nullable Object credential,
        @nullable AuthProvider provider, @nullable Object incoming),
    Result signOut(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result displayNameChanged(_DisplayNameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result guardianEmailChanged(_GuardianEmailChanged value),
    @required Result genderChanged(_GenderChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result newPasswordChanged(_NewPasswordChanged value),
    @required
        Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    @required
        Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required
        Result createAccountWithEmailAndPassword(
            _CreateAccountWithEmailAndPassword value),
    @required Result createInstructorAccount(_CreateInstructorAccount value),
    @required Result createStudentAccount(_CreateStudentAccount value),
    @required Result updateProfile(_UpdateProfile value),
    @required Result emailPasswordReset(_EmailPasswordReset value),
    @required Result updatePassword(_UpdatePassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
    @required Result signInWithTwitter(_SignInWithTwitter value),
    @required Result signInWithCredentials(_SignInWithCredentials value),
    @required Result signOut(_SignOut value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result displayNameChanged(_DisplayNameChanged value),
    Result emailChanged(_EmailChanged value),
    Result guardianEmailChanged(_GuardianEmailChanged value),
    Result genderChanged(_GenderChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result newPasswordChanged(_NewPasswordChanged value),
    Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result createAccountWithEmailAndPassword(
        _CreateAccountWithEmailAndPassword value),
    Result createInstructorAccount(_CreateInstructorAccount value),
    Result createStudentAccount(_CreateStudentAccount value),
    Result updateProfile(_UpdateProfile value),
    Result emailPasswordReset(_EmailPasswordReset value),
    Result updatePassword(_UpdatePassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    Result signInWithTwitter(_SignInWithTwitter value),
    Result signInWithCredentials(_SignInWithCredentials value),
    Result signOut(_SignOut value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$DisplayNameChangedCopyWith<$Res> {
  factory _$DisplayNameChangedCopyWith(
          _DisplayNameChanged value, $Res Function(_DisplayNameChanged) then) =
      __$DisplayNameChangedCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class __$DisplayNameChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$DisplayNameChangedCopyWith<$Res> {
  __$DisplayNameChangedCopyWithImpl(
      _DisplayNameChanged _value, $Res Function(_DisplayNameChanged) _then)
      : super(_value, (v) => _then(v as _DisplayNameChanged));

  @override
  _DisplayNameChanged get _value => super._value as _DisplayNameChanged;

  @override
  $Res call({
    Object input = freezed,
  }) {
    return _then(_DisplayNameChanged(
      input == freezed ? _value.input : input as String,
    ));
  }
}

/// @nodoc
class _$_DisplayNameChanged implements _DisplayNameChanged {
  const _$_DisplayNameChanged(this.input) : assert(input != null);

  @override
  final String input;

  @override
  String toString() {
    return 'AuthEvent.displayNameChanged(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DisplayNameChanged &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @override
  _$DisplayNameChangedCopyWith<_DisplayNameChanged> get copyWith =>
      __$DisplayNameChangedCopyWithImpl<_DisplayNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result displayNameChanged(String input),
    @required Result emailChanged(String email),
    @required Result guardianEmailChanged(String email),
    @required Result genderChanged(GenderType gender),
    @required Result passwordChanged(String password, FIELD_VALIDATION mode),
    @required
        Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    @required Result toggledPasswordVisibility(),
    @required Result toggledSnackBarVisibility(bool value),
    @required Result signInWithEmailAndPassword(),
    @required Result createAccountWithEmailAndPassword(),
    @required Result createInstructorAccount(),
    @required Result createStudentAccount(),
    @required Result updateProfile(),
    @required Result emailPasswordReset(),
    @required Result updatePassword(),
    @required Result signInWithGoogle(@nullable Object incoming),
    @required Result signInWithFacebook(@nullable Object incoming),
    @required Result signInWithTwitter(@nullable Object incoming),
    @required
        Result signInWithCredentials(@nullable Object credential,
            @nullable AuthProvider provider, @nullable Object incoming),
    @required Result signOut(),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return displayNameChanged(input);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result displayNameChanged(String input),
    Result emailChanged(String email),
    Result guardianEmailChanged(String email),
    Result genderChanged(GenderType gender),
    Result passwordChanged(String password, FIELD_VALIDATION mode),
    Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    Result toggledPasswordVisibility(),
    Result toggledSnackBarVisibility(bool value),
    Result signInWithEmailAndPassword(),
    Result createAccountWithEmailAndPassword(),
    Result createInstructorAccount(),
    Result createStudentAccount(),
    Result updateProfile(),
    Result emailPasswordReset(),
    Result updatePassword(),
    Result signInWithGoogle(@nullable Object incoming),
    Result signInWithFacebook(@nullable Object incoming),
    Result signInWithTwitter(@nullable Object incoming),
    Result signInWithCredentials(@nullable Object credential,
        @nullable AuthProvider provider, @nullable Object incoming),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (displayNameChanged != null) {
      return displayNameChanged(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result displayNameChanged(_DisplayNameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result guardianEmailChanged(_GuardianEmailChanged value),
    @required Result genderChanged(_GenderChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result newPasswordChanged(_NewPasswordChanged value),
    @required
        Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    @required
        Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required
        Result createAccountWithEmailAndPassword(
            _CreateAccountWithEmailAndPassword value),
    @required Result createInstructorAccount(_CreateInstructorAccount value),
    @required Result createStudentAccount(_CreateStudentAccount value),
    @required Result updateProfile(_UpdateProfile value),
    @required Result emailPasswordReset(_EmailPasswordReset value),
    @required Result updatePassword(_UpdatePassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
    @required Result signInWithTwitter(_SignInWithTwitter value),
    @required Result signInWithCredentials(_SignInWithCredentials value),
    @required Result signOut(_SignOut value),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return displayNameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result displayNameChanged(_DisplayNameChanged value),
    Result emailChanged(_EmailChanged value),
    Result guardianEmailChanged(_GuardianEmailChanged value),
    Result genderChanged(_GenderChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result newPasswordChanged(_NewPasswordChanged value),
    Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result createAccountWithEmailAndPassword(
        _CreateAccountWithEmailAndPassword value),
    Result createInstructorAccount(_CreateInstructorAccount value),
    Result createStudentAccount(_CreateStudentAccount value),
    Result updateProfile(_UpdateProfile value),
    Result emailPasswordReset(_EmailPasswordReset value),
    Result updatePassword(_UpdatePassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    Result signInWithTwitter(_SignInWithTwitter value),
    Result signInWithCredentials(_SignInWithCredentials value),
    Result signOut(_SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (displayNameChanged != null) {
      return displayNameChanged(this);
    }
    return orElse();
  }
}

abstract class _DisplayNameChanged implements AuthEvent {
  const factory _DisplayNameChanged(String input) = _$_DisplayNameChanged;

  String get input;
  _$DisplayNameChangedCopyWith<_DisplayNameChanged> get copyWith;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_EmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result displayNameChanged(String input),
    @required Result emailChanged(String email),
    @required Result guardianEmailChanged(String email),
    @required Result genderChanged(GenderType gender),
    @required Result passwordChanged(String password, FIELD_VALIDATION mode),
    @required
        Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    @required Result toggledPasswordVisibility(),
    @required Result toggledSnackBarVisibility(bool value),
    @required Result signInWithEmailAndPassword(),
    @required Result createAccountWithEmailAndPassword(),
    @required Result createInstructorAccount(),
    @required Result createStudentAccount(),
    @required Result updateProfile(),
    @required Result emailPasswordReset(),
    @required Result updatePassword(),
    @required Result signInWithGoogle(@nullable Object incoming),
    @required Result signInWithFacebook(@nullable Object incoming),
    @required Result signInWithTwitter(@nullable Object incoming),
    @required
        Result signInWithCredentials(@nullable Object credential,
            @nullable AuthProvider provider, @nullable Object incoming),
    @required Result signOut(),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result displayNameChanged(String input),
    Result emailChanged(String email),
    Result guardianEmailChanged(String email),
    Result genderChanged(GenderType gender),
    Result passwordChanged(String password, FIELD_VALIDATION mode),
    Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    Result toggledPasswordVisibility(),
    Result toggledSnackBarVisibility(bool value),
    Result signInWithEmailAndPassword(),
    Result createAccountWithEmailAndPassword(),
    Result createInstructorAccount(),
    Result createStudentAccount(),
    Result updateProfile(),
    Result emailPasswordReset(),
    Result updatePassword(),
    Result signInWithGoogle(@nullable Object incoming),
    Result signInWithFacebook(@nullable Object incoming),
    Result signInWithTwitter(@nullable Object incoming),
    Result signInWithCredentials(@nullable Object credential,
        @nullable AuthProvider provider, @nullable Object incoming),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result displayNameChanged(_DisplayNameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result guardianEmailChanged(_GuardianEmailChanged value),
    @required Result genderChanged(_GenderChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result newPasswordChanged(_NewPasswordChanged value),
    @required
        Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    @required
        Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required
        Result createAccountWithEmailAndPassword(
            _CreateAccountWithEmailAndPassword value),
    @required Result createInstructorAccount(_CreateInstructorAccount value),
    @required Result createStudentAccount(_CreateStudentAccount value),
    @required Result updateProfile(_UpdateProfile value),
    @required Result emailPasswordReset(_EmailPasswordReset value),
    @required Result updatePassword(_UpdatePassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
    @required Result signInWithTwitter(_SignInWithTwitter value),
    @required Result signInWithCredentials(_SignInWithCredentials value),
    @required Result signOut(_SignOut value),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result displayNameChanged(_DisplayNameChanged value),
    Result emailChanged(_EmailChanged value),
    Result guardianEmailChanged(_GuardianEmailChanged value),
    Result genderChanged(_GenderChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result newPasswordChanged(_NewPasswordChanged value),
    Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result createAccountWithEmailAndPassword(
        _CreateAccountWithEmailAndPassword value),
    Result createInstructorAccount(_CreateInstructorAccount value),
    Result createStudentAccount(_CreateStudentAccount value),
    Result updateProfile(_UpdateProfile value),
    Result emailPasswordReset(_EmailPasswordReset value),
    Result updatePassword(_UpdatePassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    Result signInWithTwitter(_SignInWithTwitter value),
    Result signInWithCredentials(_SignInWithCredentials value),
    Result signOut(_SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements AuthEvent {
  const factory _EmailChanged(String email) = _$_EmailChanged;

  String get email;
  _$EmailChangedCopyWith<_EmailChanged> get copyWith;
}

/// @nodoc
abstract class _$GuardianEmailChangedCopyWith<$Res> {
  factory _$GuardianEmailChangedCopyWith(_GuardianEmailChanged value,
          $Res Function(_GuardianEmailChanged) then) =
      __$GuardianEmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$GuardianEmailChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$GuardianEmailChangedCopyWith<$Res> {
  __$GuardianEmailChangedCopyWithImpl(
      _GuardianEmailChanged _value, $Res Function(_GuardianEmailChanged) _then)
      : super(_value, (v) => _then(v as _GuardianEmailChanged));

  @override
  _GuardianEmailChanged get _value => super._value as _GuardianEmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_GuardianEmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$_GuardianEmailChanged implements _GuardianEmailChanged {
  const _$_GuardianEmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.guardianEmailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GuardianEmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  _$GuardianEmailChangedCopyWith<_GuardianEmailChanged> get copyWith =>
      __$GuardianEmailChangedCopyWithImpl<_GuardianEmailChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result displayNameChanged(String input),
    @required Result emailChanged(String email),
    @required Result guardianEmailChanged(String email),
    @required Result genderChanged(GenderType gender),
    @required Result passwordChanged(String password, FIELD_VALIDATION mode),
    @required
        Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    @required Result toggledPasswordVisibility(),
    @required Result toggledSnackBarVisibility(bool value),
    @required Result signInWithEmailAndPassword(),
    @required Result createAccountWithEmailAndPassword(),
    @required Result createInstructorAccount(),
    @required Result createStudentAccount(),
    @required Result updateProfile(),
    @required Result emailPasswordReset(),
    @required Result updatePassword(),
    @required Result signInWithGoogle(@nullable Object incoming),
    @required Result signInWithFacebook(@nullable Object incoming),
    @required Result signInWithTwitter(@nullable Object incoming),
    @required
        Result signInWithCredentials(@nullable Object credential,
            @nullable AuthProvider provider, @nullable Object incoming),
    @required Result signOut(),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return guardianEmailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result displayNameChanged(String input),
    Result emailChanged(String email),
    Result guardianEmailChanged(String email),
    Result genderChanged(GenderType gender),
    Result passwordChanged(String password, FIELD_VALIDATION mode),
    Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    Result toggledPasswordVisibility(),
    Result toggledSnackBarVisibility(bool value),
    Result signInWithEmailAndPassword(),
    Result createAccountWithEmailAndPassword(),
    Result createInstructorAccount(),
    Result createStudentAccount(),
    Result updateProfile(),
    Result emailPasswordReset(),
    Result updatePassword(),
    Result signInWithGoogle(@nullable Object incoming),
    Result signInWithFacebook(@nullable Object incoming),
    Result signInWithTwitter(@nullable Object incoming),
    Result signInWithCredentials(@nullable Object credential,
        @nullable AuthProvider provider, @nullable Object incoming),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (guardianEmailChanged != null) {
      return guardianEmailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result displayNameChanged(_DisplayNameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result guardianEmailChanged(_GuardianEmailChanged value),
    @required Result genderChanged(_GenderChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result newPasswordChanged(_NewPasswordChanged value),
    @required
        Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    @required
        Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required
        Result createAccountWithEmailAndPassword(
            _CreateAccountWithEmailAndPassword value),
    @required Result createInstructorAccount(_CreateInstructorAccount value),
    @required Result createStudentAccount(_CreateStudentAccount value),
    @required Result updateProfile(_UpdateProfile value),
    @required Result emailPasswordReset(_EmailPasswordReset value),
    @required Result updatePassword(_UpdatePassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
    @required Result signInWithTwitter(_SignInWithTwitter value),
    @required Result signInWithCredentials(_SignInWithCredentials value),
    @required Result signOut(_SignOut value),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return guardianEmailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result displayNameChanged(_DisplayNameChanged value),
    Result emailChanged(_EmailChanged value),
    Result guardianEmailChanged(_GuardianEmailChanged value),
    Result genderChanged(_GenderChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result newPasswordChanged(_NewPasswordChanged value),
    Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result createAccountWithEmailAndPassword(
        _CreateAccountWithEmailAndPassword value),
    Result createInstructorAccount(_CreateInstructorAccount value),
    Result createStudentAccount(_CreateStudentAccount value),
    Result updateProfile(_UpdateProfile value),
    Result emailPasswordReset(_EmailPasswordReset value),
    Result updatePassword(_UpdatePassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    Result signInWithTwitter(_SignInWithTwitter value),
    Result signInWithCredentials(_SignInWithCredentials value),
    Result signOut(_SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (guardianEmailChanged != null) {
      return guardianEmailChanged(this);
    }
    return orElse();
  }
}

abstract class _GuardianEmailChanged implements AuthEvent {
  const factory _GuardianEmailChanged(String email) = _$_GuardianEmailChanged;

  String get email;
  _$GuardianEmailChangedCopyWith<_GuardianEmailChanged> get copyWith;
}

/// @nodoc
abstract class _$GenderChangedCopyWith<$Res> {
  factory _$GenderChangedCopyWith(
          _GenderChanged value, $Res Function(_GenderChanged) then) =
      __$GenderChangedCopyWithImpl<$Res>;
  $Res call({GenderType gender});
}

/// @nodoc
class __$GenderChangedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$GenderChangedCopyWith<$Res> {
  __$GenderChangedCopyWithImpl(
      _GenderChanged _value, $Res Function(_GenderChanged) _then)
      : super(_value, (v) => _then(v as _GenderChanged));

  @override
  _GenderChanged get _value => super._value as _GenderChanged;

  @override
  $Res call({
    Object gender = freezed,
  }) {
    return _then(_GenderChanged(
      gender == freezed ? _value.gender : gender as GenderType,
    ));
  }
}

/// @nodoc
class _$_GenderChanged implements _GenderChanged {
  const _$_GenderChanged(this.gender) : assert(gender != null);

  @override
  final GenderType gender;

  @override
  String toString() {
    return 'AuthEvent.genderChanged(gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GenderChanged &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gender);

  @override
  _$GenderChangedCopyWith<_GenderChanged> get copyWith =>
      __$GenderChangedCopyWithImpl<_GenderChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result displayNameChanged(String input),
    @required Result emailChanged(String email),
    @required Result guardianEmailChanged(String email),
    @required Result genderChanged(GenderType gender),
    @required Result passwordChanged(String password, FIELD_VALIDATION mode),
    @required
        Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    @required Result toggledPasswordVisibility(),
    @required Result toggledSnackBarVisibility(bool value),
    @required Result signInWithEmailAndPassword(),
    @required Result createAccountWithEmailAndPassword(),
    @required Result createInstructorAccount(),
    @required Result createStudentAccount(),
    @required Result updateProfile(),
    @required Result emailPasswordReset(),
    @required Result updatePassword(),
    @required Result signInWithGoogle(@nullable Object incoming),
    @required Result signInWithFacebook(@nullable Object incoming),
    @required Result signInWithTwitter(@nullable Object incoming),
    @required
        Result signInWithCredentials(@nullable Object credential,
            @nullable AuthProvider provider, @nullable Object incoming),
    @required Result signOut(),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return genderChanged(gender);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result displayNameChanged(String input),
    Result emailChanged(String email),
    Result guardianEmailChanged(String email),
    Result genderChanged(GenderType gender),
    Result passwordChanged(String password, FIELD_VALIDATION mode),
    Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    Result toggledPasswordVisibility(),
    Result toggledSnackBarVisibility(bool value),
    Result signInWithEmailAndPassword(),
    Result createAccountWithEmailAndPassword(),
    Result createInstructorAccount(),
    Result createStudentAccount(),
    Result updateProfile(),
    Result emailPasswordReset(),
    Result updatePassword(),
    Result signInWithGoogle(@nullable Object incoming),
    Result signInWithFacebook(@nullable Object incoming),
    Result signInWithTwitter(@nullable Object incoming),
    Result signInWithCredentials(@nullable Object credential,
        @nullable AuthProvider provider, @nullable Object incoming),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genderChanged != null) {
      return genderChanged(gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result displayNameChanged(_DisplayNameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result guardianEmailChanged(_GuardianEmailChanged value),
    @required Result genderChanged(_GenderChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result newPasswordChanged(_NewPasswordChanged value),
    @required
        Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    @required
        Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required
        Result createAccountWithEmailAndPassword(
            _CreateAccountWithEmailAndPassword value),
    @required Result createInstructorAccount(_CreateInstructorAccount value),
    @required Result createStudentAccount(_CreateStudentAccount value),
    @required Result updateProfile(_UpdateProfile value),
    @required Result emailPasswordReset(_EmailPasswordReset value),
    @required Result updatePassword(_UpdatePassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
    @required Result signInWithTwitter(_SignInWithTwitter value),
    @required Result signInWithCredentials(_SignInWithCredentials value),
    @required Result signOut(_SignOut value),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return genderChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result displayNameChanged(_DisplayNameChanged value),
    Result emailChanged(_EmailChanged value),
    Result guardianEmailChanged(_GuardianEmailChanged value),
    Result genderChanged(_GenderChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result newPasswordChanged(_NewPasswordChanged value),
    Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result createAccountWithEmailAndPassword(
        _CreateAccountWithEmailAndPassword value),
    Result createInstructorAccount(_CreateInstructorAccount value),
    Result createStudentAccount(_CreateStudentAccount value),
    Result updateProfile(_UpdateProfile value),
    Result emailPasswordReset(_EmailPasswordReset value),
    Result updatePassword(_UpdatePassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    Result signInWithTwitter(_SignInWithTwitter value),
    Result signInWithCredentials(_SignInWithCredentials value),
    Result signOut(_SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genderChanged != null) {
      return genderChanged(this);
    }
    return orElse();
  }
}

abstract class _GenderChanged implements AuthEvent {
  const factory _GenderChanged(GenderType gender) = _$_GenderChanged;

  GenderType get gender;
  _$GenderChangedCopyWith<_GenderChanged> get copyWith;
}

/// @nodoc
abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) then) =
      __$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password, FIELD_VALIDATION mode});
}

/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(
      _PasswordChanged _value, $Res Function(_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _PasswordChanged));

  @override
  _PasswordChanged get _value => super._value as _PasswordChanged;

  @override
  $Res call({
    Object password = freezed,
    Object mode = freezed,
  }) {
    return _then(_PasswordChanged(
      password == freezed ? _value.password : password as String,
      mode: mode == freezed ? _value.mode : mode as FIELD_VALIDATION,
    ));
  }
}

/// @nodoc
class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.password, {this.mode})
      : assert(password != null);

  @override
  final String password;
  @override
  final FIELD_VALIDATION mode;

  @override
  String toString() {
    return 'AuthEvent.passwordChanged(password: $password, mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(mode);

  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result displayNameChanged(String input),
    @required Result emailChanged(String email),
    @required Result guardianEmailChanged(String email),
    @required Result genderChanged(GenderType gender),
    @required Result passwordChanged(String password, FIELD_VALIDATION mode),
    @required
        Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    @required Result toggledPasswordVisibility(),
    @required Result toggledSnackBarVisibility(bool value),
    @required Result signInWithEmailAndPassword(),
    @required Result createAccountWithEmailAndPassword(),
    @required Result createInstructorAccount(),
    @required Result createStudentAccount(),
    @required Result updateProfile(),
    @required Result emailPasswordReset(),
    @required Result updatePassword(),
    @required Result signInWithGoogle(@nullable Object incoming),
    @required Result signInWithFacebook(@nullable Object incoming),
    @required Result signInWithTwitter(@nullable Object incoming),
    @required
        Result signInWithCredentials(@nullable Object credential,
            @nullable AuthProvider provider, @nullable Object incoming),
    @required Result signOut(),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return passwordChanged(password, mode);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result displayNameChanged(String input),
    Result emailChanged(String email),
    Result guardianEmailChanged(String email),
    Result genderChanged(GenderType gender),
    Result passwordChanged(String password, FIELD_VALIDATION mode),
    Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    Result toggledPasswordVisibility(),
    Result toggledSnackBarVisibility(bool value),
    Result signInWithEmailAndPassword(),
    Result createAccountWithEmailAndPassword(),
    Result createInstructorAccount(),
    Result createStudentAccount(),
    Result updateProfile(),
    Result emailPasswordReset(),
    Result updatePassword(),
    Result signInWithGoogle(@nullable Object incoming),
    Result signInWithFacebook(@nullable Object incoming),
    Result signInWithTwitter(@nullable Object incoming),
    Result signInWithCredentials(@nullable Object credential,
        @nullable AuthProvider provider, @nullable Object incoming),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password, mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result displayNameChanged(_DisplayNameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result guardianEmailChanged(_GuardianEmailChanged value),
    @required Result genderChanged(_GenderChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result newPasswordChanged(_NewPasswordChanged value),
    @required
        Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    @required
        Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required
        Result createAccountWithEmailAndPassword(
            _CreateAccountWithEmailAndPassword value),
    @required Result createInstructorAccount(_CreateInstructorAccount value),
    @required Result createStudentAccount(_CreateStudentAccount value),
    @required Result updateProfile(_UpdateProfile value),
    @required Result emailPasswordReset(_EmailPasswordReset value),
    @required Result updatePassword(_UpdatePassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
    @required Result signInWithTwitter(_SignInWithTwitter value),
    @required Result signInWithCredentials(_SignInWithCredentials value),
    @required Result signOut(_SignOut value),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result displayNameChanged(_DisplayNameChanged value),
    Result emailChanged(_EmailChanged value),
    Result guardianEmailChanged(_GuardianEmailChanged value),
    Result genderChanged(_GenderChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result newPasswordChanged(_NewPasswordChanged value),
    Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result createAccountWithEmailAndPassword(
        _CreateAccountWithEmailAndPassword value),
    Result createInstructorAccount(_CreateInstructorAccount value),
    Result createStudentAccount(_CreateStudentAccount value),
    Result updateProfile(_UpdateProfile value),
    Result emailPasswordReset(_EmailPasswordReset value),
    Result updatePassword(_UpdatePassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    Result signInWithTwitter(_SignInWithTwitter value),
    Result signInWithCredentials(_SignInWithCredentials value),
    Result signOut(_SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements AuthEvent {
  const factory _PasswordChanged(String password, {FIELD_VALIDATION mode}) =
      _$_PasswordChanged;

  String get password;
  FIELD_VALIDATION get mode;
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith;
}

/// @nodoc
abstract class _$NewPasswordChangedCopyWith<$Res> {
  factory _$NewPasswordChangedCopyWith(
          _NewPasswordChanged value, $Res Function(_NewPasswordChanged) then) =
      __$NewPasswordChangedCopyWithImpl<$Res>;
  $Res call({String newPassword, FIELD_VALIDATION mode});
}

/// @nodoc
class __$NewPasswordChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$NewPasswordChangedCopyWith<$Res> {
  __$NewPasswordChangedCopyWithImpl(
      _NewPasswordChanged _value, $Res Function(_NewPasswordChanged) _then)
      : super(_value, (v) => _then(v as _NewPasswordChanged));

  @override
  _NewPasswordChanged get _value => super._value as _NewPasswordChanged;

  @override
  $Res call({
    Object newPassword = freezed,
    Object mode = freezed,
  }) {
    return _then(_NewPasswordChanged(
      newPassword == freezed ? _value.newPassword : newPassword as String,
      mode: mode == freezed ? _value.mode : mode as FIELD_VALIDATION,
    ));
  }
}

/// @nodoc
class _$_NewPasswordChanged implements _NewPasswordChanged {
  const _$_NewPasswordChanged(this.newPassword, {this.mode})
      : assert(newPassword != null);

  @override
  final String newPassword;
  @override
  final FIELD_VALIDATION mode;

  @override
  String toString() {
    return 'AuthEvent.newPasswordChanged(newPassword: $newPassword, mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewPasswordChanged &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality()
                    .equals(other.newPassword, newPassword)) &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newPassword) ^
      const DeepCollectionEquality().hash(mode);

  @override
  _$NewPasswordChangedCopyWith<_NewPasswordChanged> get copyWith =>
      __$NewPasswordChangedCopyWithImpl<_NewPasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result displayNameChanged(String input),
    @required Result emailChanged(String email),
    @required Result guardianEmailChanged(String email),
    @required Result genderChanged(GenderType gender),
    @required Result passwordChanged(String password, FIELD_VALIDATION mode),
    @required
        Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    @required Result toggledPasswordVisibility(),
    @required Result toggledSnackBarVisibility(bool value),
    @required Result signInWithEmailAndPassword(),
    @required Result createAccountWithEmailAndPassword(),
    @required Result createInstructorAccount(),
    @required Result createStudentAccount(),
    @required Result updateProfile(),
    @required Result emailPasswordReset(),
    @required Result updatePassword(),
    @required Result signInWithGoogle(@nullable Object incoming),
    @required Result signInWithFacebook(@nullable Object incoming),
    @required Result signInWithTwitter(@nullable Object incoming),
    @required
        Result signInWithCredentials(@nullable Object credential,
            @nullable AuthProvider provider, @nullable Object incoming),
    @required Result signOut(),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return newPasswordChanged(newPassword, mode);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result displayNameChanged(String input),
    Result emailChanged(String email),
    Result guardianEmailChanged(String email),
    Result genderChanged(GenderType gender),
    Result passwordChanged(String password, FIELD_VALIDATION mode),
    Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    Result toggledPasswordVisibility(),
    Result toggledSnackBarVisibility(bool value),
    Result signInWithEmailAndPassword(),
    Result createAccountWithEmailAndPassword(),
    Result createInstructorAccount(),
    Result createStudentAccount(),
    Result updateProfile(),
    Result emailPasswordReset(),
    Result updatePassword(),
    Result signInWithGoogle(@nullable Object incoming),
    Result signInWithFacebook(@nullable Object incoming),
    Result signInWithTwitter(@nullable Object incoming),
    Result signInWithCredentials(@nullable Object credential,
        @nullable AuthProvider provider, @nullable Object incoming),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newPasswordChanged != null) {
      return newPasswordChanged(newPassword, mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result displayNameChanged(_DisplayNameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result guardianEmailChanged(_GuardianEmailChanged value),
    @required Result genderChanged(_GenderChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result newPasswordChanged(_NewPasswordChanged value),
    @required
        Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    @required
        Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required
        Result createAccountWithEmailAndPassword(
            _CreateAccountWithEmailAndPassword value),
    @required Result createInstructorAccount(_CreateInstructorAccount value),
    @required Result createStudentAccount(_CreateStudentAccount value),
    @required Result updateProfile(_UpdateProfile value),
    @required Result emailPasswordReset(_EmailPasswordReset value),
    @required Result updatePassword(_UpdatePassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
    @required Result signInWithTwitter(_SignInWithTwitter value),
    @required Result signInWithCredentials(_SignInWithCredentials value),
    @required Result signOut(_SignOut value),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return newPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result displayNameChanged(_DisplayNameChanged value),
    Result emailChanged(_EmailChanged value),
    Result guardianEmailChanged(_GuardianEmailChanged value),
    Result genderChanged(_GenderChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result newPasswordChanged(_NewPasswordChanged value),
    Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result createAccountWithEmailAndPassword(
        _CreateAccountWithEmailAndPassword value),
    Result createInstructorAccount(_CreateInstructorAccount value),
    Result createStudentAccount(_CreateStudentAccount value),
    Result updateProfile(_UpdateProfile value),
    Result emailPasswordReset(_EmailPasswordReset value),
    Result updatePassword(_UpdatePassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    Result signInWithTwitter(_SignInWithTwitter value),
    Result signInWithCredentials(_SignInWithCredentials value),
    Result signOut(_SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newPasswordChanged != null) {
      return newPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _NewPasswordChanged implements AuthEvent {
  const factory _NewPasswordChanged(String newPassword,
      {FIELD_VALIDATION mode}) = _$_NewPasswordChanged;

  String get newPassword;
  FIELD_VALIDATION get mode;
  _$NewPasswordChangedCopyWith<_NewPasswordChanged> get copyWith;
}

/// @nodoc
abstract class _$ToggledPasswordVisibilityCopyWith<$Res> {
  factory _$ToggledPasswordVisibilityCopyWith(_ToggledPasswordVisibility value,
          $Res Function(_ToggledPasswordVisibility) then) =
      __$ToggledPasswordVisibilityCopyWithImpl<$Res>;
}

/// @nodoc
class __$ToggledPasswordVisibilityCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$ToggledPasswordVisibilityCopyWith<$Res> {
  __$ToggledPasswordVisibilityCopyWithImpl(_ToggledPasswordVisibility _value,
      $Res Function(_ToggledPasswordVisibility) _then)
      : super(_value, (v) => _then(v as _ToggledPasswordVisibility));

  @override
  _ToggledPasswordVisibility get _value =>
      super._value as _ToggledPasswordVisibility;
}

/// @nodoc
class _$_ToggledPasswordVisibility implements _ToggledPasswordVisibility {
  const _$_ToggledPasswordVisibility();

  @override
  String toString() {
    return 'AuthEvent.toggledPasswordVisibility()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ToggledPasswordVisibility);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result displayNameChanged(String input),
    @required Result emailChanged(String email),
    @required Result guardianEmailChanged(String email),
    @required Result genderChanged(GenderType gender),
    @required Result passwordChanged(String password, FIELD_VALIDATION mode),
    @required
        Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    @required Result toggledPasswordVisibility(),
    @required Result toggledSnackBarVisibility(bool value),
    @required Result signInWithEmailAndPassword(),
    @required Result createAccountWithEmailAndPassword(),
    @required Result createInstructorAccount(),
    @required Result createStudentAccount(),
    @required Result updateProfile(),
    @required Result emailPasswordReset(),
    @required Result updatePassword(),
    @required Result signInWithGoogle(@nullable Object incoming),
    @required Result signInWithFacebook(@nullable Object incoming),
    @required Result signInWithTwitter(@nullable Object incoming),
    @required
        Result signInWithCredentials(@nullable Object credential,
            @nullable AuthProvider provider, @nullable Object incoming),
    @required Result signOut(),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return toggledPasswordVisibility();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result displayNameChanged(String input),
    Result emailChanged(String email),
    Result guardianEmailChanged(String email),
    Result genderChanged(GenderType gender),
    Result passwordChanged(String password, FIELD_VALIDATION mode),
    Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    Result toggledPasswordVisibility(),
    Result toggledSnackBarVisibility(bool value),
    Result signInWithEmailAndPassword(),
    Result createAccountWithEmailAndPassword(),
    Result createInstructorAccount(),
    Result createStudentAccount(),
    Result updateProfile(),
    Result emailPasswordReset(),
    Result updatePassword(),
    Result signInWithGoogle(@nullable Object incoming),
    Result signInWithFacebook(@nullable Object incoming),
    Result signInWithTwitter(@nullable Object incoming),
    Result signInWithCredentials(@nullable Object credential,
        @nullable AuthProvider provider, @nullable Object incoming),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggledPasswordVisibility != null) {
      return toggledPasswordVisibility();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result displayNameChanged(_DisplayNameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result guardianEmailChanged(_GuardianEmailChanged value),
    @required Result genderChanged(_GenderChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result newPasswordChanged(_NewPasswordChanged value),
    @required
        Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    @required
        Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required
        Result createAccountWithEmailAndPassword(
            _CreateAccountWithEmailAndPassword value),
    @required Result createInstructorAccount(_CreateInstructorAccount value),
    @required Result createStudentAccount(_CreateStudentAccount value),
    @required Result updateProfile(_UpdateProfile value),
    @required Result emailPasswordReset(_EmailPasswordReset value),
    @required Result updatePassword(_UpdatePassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
    @required Result signInWithTwitter(_SignInWithTwitter value),
    @required Result signInWithCredentials(_SignInWithCredentials value),
    @required Result signOut(_SignOut value),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return toggledPasswordVisibility(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result displayNameChanged(_DisplayNameChanged value),
    Result emailChanged(_EmailChanged value),
    Result guardianEmailChanged(_GuardianEmailChanged value),
    Result genderChanged(_GenderChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result newPasswordChanged(_NewPasswordChanged value),
    Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result createAccountWithEmailAndPassword(
        _CreateAccountWithEmailAndPassword value),
    Result createInstructorAccount(_CreateInstructorAccount value),
    Result createStudentAccount(_CreateStudentAccount value),
    Result updateProfile(_UpdateProfile value),
    Result emailPasswordReset(_EmailPasswordReset value),
    Result updatePassword(_UpdatePassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    Result signInWithTwitter(_SignInWithTwitter value),
    Result signInWithCredentials(_SignInWithCredentials value),
    Result signOut(_SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggledPasswordVisibility != null) {
      return toggledPasswordVisibility(this);
    }
    return orElse();
  }
}

abstract class _ToggledPasswordVisibility implements AuthEvent {
  const factory _ToggledPasswordVisibility() = _$_ToggledPasswordVisibility;
}

/// @nodoc
abstract class _$ToggledSnackBarVisibilityCopyWith<$Res> {
  factory _$ToggledSnackBarVisibilityCopyWith(_ToggledSnackBarVisibility value,
          $Res Function(_ToggledSnackBarVisibility) then) =
      __$ToggledSnackBarVisibilityCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class __$ToggledSnackBarVisibilityCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$ToggledSnackBarVisibilityCopyWith<$Res> {
  __$ToggledSnackBarVisibilityCopyWithImpl(_ToggledSnackBarVisibility _value,
      $Res Function(_ToggledSnackBarVisibility) _then)
      : super(_value, (v) => _then(v as _ToggledSnackBarVisibility));

  @override
  _ToggledSnackBarVisibility get _value =>
      super._value as _ToggledSnackBarVisibility;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(_ToggledSnackBarVisibility(
      value == freezed ? _value.value : value as bool,
    ));
  }
}

/// @nodoc
class _$_ToggledSnackBarVisibility implements _ToggledSnackBarVisibility {
  const _$_ToggledSnackBarVisibility([this.value]);

  @override
  final bool value;

  @override
  String toString() {
    return 'AuthEvent.toggledSnackBarVisibility(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToggledSnackBarVisibility &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  _$ToggledSnackBarVisibilityCopyWith<_ToggledSnackBarVisibility>
      get copyWith =>
          __$ToggledSnackBarVisibilityCopyWithImpl<_ToggledSnackBarVisibility>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result displayNameChanged(String input),
    @required Result emailChanged(String email),
    @required Result guardianEmailChanged(String email),
    @required Result genderChanged(GenderType gender),
    @required Result passwordChanged(String password, FIELD_VALIDATION mode),
    @required
        Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    @required Result toggledPasswordVisibility(),
    @required Result toggledSnackBarVisibility(bool value),
    @required Result signInWithEmailAndPassword(),
    @required Result createAccountWithEmailAndPassword(),
    @required Result createInstructorAccount(),
    @required Result createStudentAccount(),
    @required Result updateProfile(),
    @required Result emailPasswordReset(),
    @required Result updatePassword(),
    @required Result signInWithGoogle(@nullable Object incoming),
    @required Result signInWithFacebook(@nullable Object incoming),
    @required Result signInWithTwitter(@nullable Object incoming),
    @required
        Result signInWithCredentials(@nullable Object credential,
            @nullable AuthProvider provider, @nullable Object incoming),
    @required Result signOut(),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return toggledSnackBarVisibility(value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result displayNameChanged(String input),
    Result emailChanged(String email),
    Result guardianEmailChanged(String email),
    Result genderChanged(GenderType gender),
    Result passwordChanged(String password, FIELD_VALIDATION mode),
    Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    Result toggledPasswordVisibility(),
    Result toggledSnackBarVisibility(bool value),
    Result signInWithEmailAndPassword(),
    Result createAccountWithEmailAndPassword(),
    Result createInstructorAccount(),
    Result createStudentAccount(),
    Result updateProfile(),
    Result emailPasswordReset(),
    Result updatePassword(),
    Result signInWithGoogle(@nullable Object incoming),
    Result signInWithFacebook(@nullable Object incoming),
    Result signInWithTwitter(@nullable Object incoming),
    Result signInWithCredentials(@nullable Object credential,
        @nullable AuthProvider provider, @nullable Object incoming),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggledSnackBarVisibility != null) {
      return toggledSnackBarVisibility(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result displayNameChanged(_DisplayNameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result guardianEmailChanged(_GuardianEmailChanged value),
    @required Result genderChanged(_GenderChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result newPasswordChanged(_NewPasswordChanged value),
    @required
        Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    @required
        Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required
        Result createAccountWithEmailAndPassword(
            _CreateAccountWithEmailAndPassword value),
    @required Result createInstructorAccount(_CreateInstructorAccount value),
    @required Result createStudentAccount(_CreateStudentAccount value),
    @required Result updateProfile(_UpdateProfile value),
    @required Result emailPasswordReset(_EmailPasswordReset value),
    @required Result updatePassword(_UpdatePassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
    @required Result signInWithTwitter(_SignInWithTwitter value),
    @required Result signInWithCredentials(_SignInWithCredentials value),
    @required Result signOut(_SignOut value),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return toggledSnackBarVisibility(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result displayNameChanged(_DisplayNameChanged value),
    Result emailChanged(_EmailChanged value),
    Result guardianEmailChanged(_GuardianEmailChanged value),
    Result genderChanged(_GenderChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result newPasswordChanged(_NewPasswordChanged value),
    Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result createAccountWithEmailAndPassword(
        _CreateAccountWithEmailAndPassword value),
    Result createInstructorAccount(_CreateInstructorAccount value),
    Result createStudentAccount(_CreateStudentAccount value),
    Result updateProfile(_UpdateProfile value),
    Result emailPasswordReset(_EmailPasswordReset value),
    Result updatePassword(_UpdatePassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    Result signInWithTwitter(_SignInWithTwitter value),
    Result signInWithCredentials(_SignInWithCredentials value),
    Result signOut(_SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggledSnackBarVisibility != null) {
      return toggledSnackBarVisibility(this);
    }
    return orElse();
  }
}

abstract class _ToggledSnackBarVisibility implements AuthEvent {
  const factory _ToggledSnackBarVisibility([bool value]) =
      _$_ToggledSnackBarVisibility;

  bool get value;
  _$ToggledSnackBarVisibilityCopyWith<_ToggledSnackBarVisibility> get copyWith;
}

/// @nodoc
abstract class _$SignInWithEmailAndPasswordCopyWith<$Res> {
  factory _$SignInWithEmailAndPasswordCopyWith(
          _SignInWithEmailAndPassword value,
          $Res Function(_SignInWithEmailAndPassword) then) =
      __$SignInWithEmailAndPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$SignInWithEmailAndPasswordCopyWith<$Res> {
  __$SignInWithEmailAndPasswordCopyWithImpl(_SignInWithEmailAndPassword _value,
      $Res Function(_SignInWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as _SignInWithEmailAndPassword));

  @override
  _SignInWithEmailAndPassword get _value =>
      super._value as _SignInWithEmailAndPassword;
}

/// @nodoc
class _$_SignInWithEmailAndPassword implements _SignInWithEmailAndPassword {
  const _$_SignInWithEmailAndPassword();

  @override
  String toString() {
    return 'AuthEvent.signInWithEmailAndPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInWithEmailAndPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result displayNameChanged(String input),
    @required Result emailChanged(String email),
    @required Result guardianEmailChanged(String email),
    @required Result genderChanged(GenderType gender),
    @required Result passwordChanged(String password, FIELD_VALIDATION mode),
    @required
        Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    @required Result toggledPasswordVisibility(),
    @required Result toggledSnackBarVisibility(bool value),
    @required Result signInWithEmailAndPassword(),
    @required Result createAccountWithEmailAndPassword(),
    @required Result createInstructorAccount(),
    @required Result createStudentAccount(),
    @required Result updateProfile(),
    @required Result emailPasswordReset(),
    @required Result updatePassword(),
    @required Result signInWithGoogle(@nullable Object incoming),
    @required Result signInWithFacebook(@nullable Object incoming),
    @required Result signInWithTwitter(@nullable Object incoming),
    @required
        Result signInWithCredentials(@nullable Object credential,
            @nullable AuthProvider provider, @nullable Object incoming),
    @required Result signOut(),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return signInWithEmailAndPassword();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result displayNameChanged(String input),
    Result emailChanged(String email),
    Result guardianEmailChanged(String email),
    Result genderChanged(GenderType gender),
    Result passwordChanged(String password, FIELD_VALIDATION mode),
    Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    Result toggledPasswordVisibility(),
    Result toggledSnackBarVisibility(bool value),
    Result signInWithEmailAndPassword(),
    Result createAccountWithEmailAndPassword(),
    Result createInstructorAccount(),
    Result createStudentAccount(),
    Result updateProfile(),
    Result emailPasswordReset(),
    Result updatePassword(),
    Result signInWithGoogle(@nullable Object incoming),
    Result signInWithFacebook(@nullable Object incoming),
    Result signInWithTwitter(@nullable Object incoming),
    Result signInWithCredentials(@nullable Object credential,
        @nullable AuthProvider provider, @nullable Object incoming),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result displayNameChanged(_DisplayNameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result guardianEmailChanged(_GuardianEmailChanged value),
    @required Result genderChanged(_GenderChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result newPasswordChanged(_NewPasswordChanged value),
    @required
        Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    @required
        Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required
        Result createAccountWithEmailAndPassword(
            _CreateAccountWithEmailAndPassword value),
    @required Result createInstructorAccount(_CreateInstructorAccount value),
    @required Result createStudentAccount(_CreateStudentAccount value),
    @required Result updateProfile(_UpdateProfile value),
    @required Result emailPasswordReset(_EmailPasswordReset value),
    @required Result updatePassword(_UpdatePassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
    @required Result signInWithTwitter(_SignInWithTwitter value),
    @required Result signInWithCredentials(_SignInWithCredentials value),
    @required Result signOut(_SignOut value),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return signInWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result displayNameChanged(_DisplayNameChanged value),
    Result emailChanged(_EmailChanged value),
    Result guardianEmailChanged(_GuardianEmailChanged value),
    Result genderChanged(_GenderChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result newPasswordChanged(_NewPasswordChanged value),
    Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result createAccountWithEmailAndPassword(
        _CreateAccountWithEmailAndPassword value),
    Result createInstructorAccount(_CreateInstructorAccount value),
    Result createStudentAccount(_CreateStudentAccount value),
    Result updateProfile(_UpdateProfile value),
    Result emailPasswordReset(_EmailPasswordReset value),
    Result updatePassword(_UpdatePassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    Result signInWithTwitter(_SignInWithTwitter value),
    Result signInWithCredentials(_SignInWithCredentials value),
    Result signOut(_SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEmailAndPassword implements AuthEvent {
  const factory _SignInWithEmailAndPassword() = _$_SignInWithEmailAndPassword;
}

/// @nodoc
abstract class _$CreateAccountWithEmailAndPasswordCopyWith<$Res> {
  factory _$CreateAccountWithEmailAndPasswordCopyWith(
          _CreateAccountWithEmailAndPassword value,
          $Res Function(_CreateAccountWithEmailAndPassword) then) =
      __$CreateAccountWithEmailAndPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateAccountWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$CreateAccountWithEmailAndPasswordCopyWith<$Res> {
  __$CreateAccountWithEmailAndPasswordCopyWithImpl(
      _CreateAccountWithEmailAndPassword _value,
      $Res Function(_CreateAccountWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as _CreateAccountWithEmailAndPassword));

  @override
  _CreateAccountWithEmailAndPassword get _value =>
      super._value as _CreateAccountWithEmailAndPassword;
}

/// @nodoc
class _$_CreateAccountWithEmailAndPassword
    implements _CreateAccountWithEmailAndPassword {
  const _$_CreateAccountWithEmailAndPassword();

  @override
  String toString() {
    return 'AuthEvent.createAccountWithEmailAndPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateAccountWithEmailAndPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result displayNameChanged(String input),
    @required Result emailChanged(String email),
    @required Result guardianEmailChanged(String email),
    @required Result genderChanged(GenderType gender),
    @required Result passwordChanged(String password, FIELD_VALIDATION mode),
    @required
        Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    @required Result toggledPasswordVisibility(),
    @required Result toggledSnackBarVisibility(bool value),
    @required Result signInWithEmailAndPassword(),
    @required Result createAccountWithEmailAndPassword(),
    @required Result createInstructorAccount(),
    @required Result createStudentAccount(),
    @required Result updateProfile(),
    @required Result emailPasswordReset(),
    @required Result updatePassword(),
    @required Result signInWithGoogle(@nullable Object incoming),
    @required Result signInWithFacebook(@nullable Object incoming),
    @required Result signInWithTwitter(@nullable Object incoming),
    @required
        Result signInWithCredentials(@nullable Object credential,
            @nullable AuthProvider provider, @nullable Object incoming),
    @required Result signOut(),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return createAccountWithEmailAndPassword();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result displayNameChanged(String input),
    Result emailChanged(String email),
    Result guardianEmailChanged(String email),
    Result genderChanged(GenderType gender),
    Result passwordChanged(String password, FIELD_VALIDATION mode),
    Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    Result toggledPasswordVisibility(),
    Result toggledSnackBarVisibility(bool value),
    Result signInWithEmailAndPassword(),
    Result createAccountWithEmailAndPassword(),
    Result createInstructorAccount(),
    Result createStudentAccount(),
    Result updateProfile(),
    Result emailPasswordReset(),
    Result updatePassword(),
    Result signInWithGoogle(@nullable Object incoming),
    Result signInWithFacebook(@nullable Object incoming),
    Result signInWithTwitter(@nullable Object incoming),
    Result signInWithCredentials(@nullable Object credential,
        @nullable AuthProvider provider, @nullable Object incoming),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createAccountWithEmailAndPassword != null) {
      return createAccountWithEmailAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result displayNameChanged(_DisplayNameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result guardianEmailChanged(_GuardianEmailChanged value),
    @required Result genderChanged(_GenderChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result newPasswordChanged(_NewPasswordChanged value),
    @required
        Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    @required
        Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required
        Result createAccountWithEmailAndPassword(
            _CreateAccountWithEmailAndPassword value),
    @required Result createInstructorAccount(_CreateInstructorAccount value),
    @required Result createStudentAccount(_CreateStudentAccount value),
    @required Result updateProfile(_UpdateProfile value),
    @required Result emailPasswordReset(_EmailPasswordReset value),
    @required Result updatePassword(_UpdatePassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
    @required Result signInWithTwitter(_SignInWithTwitter value),
    @required Result signInWithCredentials(_SignInWithCredentials value),
    @required Result signOut(_SignOut value),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return createAccountWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result displayNameChanged(_DisplayNameChanged value),
    Result emailChanged(_EmailChanged value),
    Result guardianEmailChanged(_GuardianEmailChanged value),
    Result genderChanged(_GenderChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result newPasswordChanged(_NewPasswordChanged value),
    Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result createAccountWithEmailAndPassword(
        _CreateAccountWithEmailAndPassword value),
    Result createInstructorAccount(_CreateInstructorAccount value),
    Result createStudentAccount(_CreateStudentAccount value),
    Result updateProfile(_UpdateProfile value),
    Result emailPasswordReset(_EmailPasswordReset value),
    Result updatePassword(_UpdatePassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    Result signInWithTwitter(_SignInWithTwitter value),
    Result signInWithCredentials(_SignInWithCredentials value),
    Result signOut(_SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createAccountWithEmailAndPassword != null) {
      return createAccountWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _CreateAccountWithEmailAndPassword implements AuthEvent {
  const factory _CreateAccountWithEmailAndPassword() =
      _$_CreateAccountWithEmailAndPassword;
}

/// @nodoc
abstract class _$CreateInstructorAccountCopyWith<$Res> {
  factory _$CreateInstructorAccountCopyWith(_CreateInstructorAccount value,
          $Res Function(_CreateInstructorAccount) then) =
      __$CreateInstructorAccountCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateInstructorAccountCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$CreateInstructorAccountCopyWith<$Res> {
  __$CreateInstructorAccountCopyWithImpl(_CreateInstructorAccount _value,
      $Res Function(_CreateInstructorAccount) _then)
      : super(_value, (v) => _then(v as _CreateInstructorAccount));

  @override
  _CreateInstructorAccount get _value =>
      super._value as _CreateInstructorAccount;
}

/// @nodoc
class _$_CreateInstructorAccount implements _CreateInstructorAccount {
  const _$_CreateInstructorAccount();

  @override
  String toString() {
    return 'AuthEvent.createInstructorAccount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreateInstructorAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result displayNameChanged(String input),
    @required Result emailChanged(String email),
    @required Result guardianEmailChanged(String email),
    @required Result genderChanged(GenderType gender),
    @required Result passwordChanged(String password, FIELD_VALIDATION mode),
    @required
        Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    @required Result toggledPasswordVisibility(),
    @required Result toggledSnackBarVisibility(bool value),
    @required Result signInWithEmailAndPassword(),
    @required Result createAccountWithEmailAndPassword(),
    @required Result createInstructorAccount(),
    @required Result createStudentAccount(),
    @required Result updateProfile(),
    @required Result emailPasswordReset(),
    @required Result updatePassword(),
    @required Result signInWithGoogle(@nullable Object incoming),
    @required Result signInWithFacebook(@nullable Object incoming),
    @required Result signInWithTwitter(@nullable Object incoming),
    @required
        Result signInWithCredentials(@nullable Object credential,
            @nullable AuthProvider provider, @nullable Object incoming),
    @required Result signOut(),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return createInstructorAccount();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result displayNameChanged(String input),
    Result emailChanged(String email),
    Result guardianEmailChanged(String email),
    Result genderChanged(GenderType gender),
    Result passwordChanged(String password, FIELD_VALIDATION mode),
    Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    Result toggledPasswordVisibility(),
    Result toggledSnackBarVisibility(bool value),
    Result signInWithEmailAndPassword(),
    Result createAccountWithEmailAndPassword(),
    Result createInstructorAccount(),
    Result createStudentAccount(),
    Result updateProfile(),
    Result emailPasswordReset(),
    Result updatePassword(),
    Result signInWithGoogle(@nullable Object incoming),
    Result signInWithFacebook(@nullable Object incoming),
    Result signInWithTwitter(@nullable Object incoming),
    Result signInWithCredentials(@nullable Object credential,
        @nullable AuthProvider provider, @nullable Object incoming),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createInstructorAccount != null) {
      return createInstructorAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result displayNameChanged(_DisplayNameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result guardianEmailChanged(_GuardianEmailChanged value),
    @required Result genderChanged(_GenderChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result newPasswordChanged(_NewPasswordChanged value),
    @required
        Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    @required
        Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required
        Result createAccountWithEmailAndPassword(
            _CreateAccountWithEmailAndPassword value),
    @required Result createInstructorAccount(_CreateInstructorAccount value),
    @required Result createStudentAccount(_CreateStudentAccount value),
    @required Result updateProfile(_UpdateProfile value),
    @required Result emailPasswordReset(_EmailPasswordReset value),
    @required Result updatePassword(_UpdatePassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
    @required Result signInWithTwitter(_SignInWithTwitter value),
    @required Result signInWithCredentials(_SignInWithCredentials value),
    @required Result signOut(_SignOut value),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return createInstructorAccount(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result displayNameChanged(_DisplayNameChanged value),
    Result emailChanged(_EmailChanged value),
    Result guardianEmailChanged(_GuardianEmailChanged value),
    Result genderChanged(_GenderChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result newPasswordChanged(_NewPasswordChanged value),
    Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result createAccountWithEmailAndPassword(
        _CreateAccountWithEmailAndPassword value),
    Result createInstructorAccount(_CreateInstructorAccount value),
    Result createStudentAccount(_CreateStudentAccount value),
    Result updateProfile(_UpdateProfile value),
    Result emailPasswordReset(_EmailPasswordReset value),
    Result updatePassword(_UpdatePassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    Result signInWithTwitter(_SignInWithTwitter value),
    Result signInWithCredentials(_SignInWithCredentials value),
    Result signOut(_SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createInstructorAccount != null) {
      return createInstructorAccount(this);
    }
    return orElse();
  }
}

abstract class _CreateInstructorAccount implements AuthEvent {
  const factory _CreateInstructorAccount() = _$_CreateInstructorAccount;
}

/// @nodoc
abstract class _$CreateStudentAccountCopyWith<$Res> {
  factory _$CreateStudentAccountCopyWith(_CreateStudentAccount value,
          $Res Function(_CreateStudentAccount) then) =
      __$CreateStudentAccountCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateStudentAccountCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$CreateStudentAccountCopyWith<$Res> {
  __$CreateStudentAccountCopyWithImpl(
      _CreateStudentAccount _value, $Res Function(_CreateStudentAccount) _then)
      : super(_value, (v) => _then(v as _CreateStudentAccount));

  @override
  _CreateStudentAccount get _value => super._value as _CreateStudentAccount;
}

/// @nodoc
class _$_CreateStudentAccount implements _CreateStudentAccount {
  const _$_CreateStudentAccount();

  @override
  String toString() {
    return 'AuthEvent.createStudentAccount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreateStudentAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result displayNameChanged(String input),
    @required Result emailChanged(String email),
    @required Result guardianEmailChanged(String email),
    @required Result genderChanged(GenderType gender),
    @required Result passwordChanged(String password, FIELD_VALIDATION mode),
    @required
        Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    @required Result toggledPasswordVisibility(),
    @required Result toggledSnackBarVisibility(bool value),
    @required Result signInWithEmailAndPassword(),
    @required Result createAccountWithEmailAndPassword(),
    @required Result createInstructorAccount(),
    @required Result createStudentAccount(),
    @required Result updateProfile(),
    @required Result emailPasswordReset(),
    @required Result updatePassword(),
    @required Result signInWithGoogle(@nullable Object incoming),
    @required Result signInWithFacebook(@nullable Object incoming),
    @required Result signInWithTwitter(@nullable Object incoming),
    @required
        Result signInWithCredentials(@nullable Object credential,
            @nullable AuthProvider provider, @nullable Object incoming),
    @required Result signOut(),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return createStudentAccount();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result displayNameChanged(String input),
    Result emailChanged(String email),
    Result guardianEmailChanged(String email),
    Result genderChanged(GenderType gender),
    Result passwordChanged(String password, FIELD_VALIDATION mode),
    Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    Result toggledPasswordVisibility(),
    Result toggledSnackBarVisibility(bool value),
    Result signInWithEmailAndPassword(),
    Result createAccountWithEmailAndPassword(),
    Result createInstructorAccount(),
    Result createStudentAccount(),
    Result updateProfile(),
    Result emailPasswordReset(),
    Result updatePassword(),
    Result signInWithGoogle(@nullable Object incoming),
    Result signInWithFacebook(@nullable Object incoming),
    Result signInWithTwitter(@nullable Object incoming),
    Result signInWithCredentials(@nullable Object credential,
        @nullable AuthProvider provider, @nullable Object incoming),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createStudentAccount != null) {
      return createStudentAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result displayNameChanged(_DisplayNameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result guardianEmailChanged(_GuardianEmailChanged value),
    @required Result genderChanged(_GenderChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result newPasswordChanged(_NewPasswordChanged value),
    @required
        Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    @required
        Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required
        Result createAccountWithEmailAndPassword(
            _CreateAccountWithEmailAndPassword value),
    @required Result createInstructorAccount(_CreateInstructorAccount value),
    @required Result createStudentAccount(_CreateStudentAccount value),
    @required Result updateProfile(_UpdateProfile value),
    @required Result emailPasswordReset(_EmailPasswordReset value),
    @required Result updatePassword(_UpdatePassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
    @required Result signInWithTwitter(_SignInWithTwitter value),
    @required Result signInWithCredentials(_SignInWithCredentials value),
    @required Result signOut(_SignOut value),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return createStudentAccount(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result displayNameChanged(_DisplayNameChanged value),
    Result emailChanged(_EmailChanged value),
    Result guardianEmailChanged(_GuardianEmailChanged value),
    Result genderChanged(_GenderChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result newPasswordChanged(_NewPasswordChanged value),
    Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result createAccountWithEmailAndPassword(
        _CreateAccountWithEmailAndPassword value),
    Result createInstructorAccount(_CreateInstructorAccount value),
    Result createStudentAccount(_CreateStudentAccount value),
    Result updateProfile(_UpdateProfile value),
    Result emailPasswordReset(_EmailPasswordReset value),
    Result updatePassword(_UpdatePassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    Result signInWithTwitter(_SignInWithTwitter value),
    Result signInWithCredentials(_SignInWithCredentials value),
    Result signOut(_SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createStudentAccount != null) {
      return createStudentAccount(this);
    }
    return orElse();
  }
}

abstract class _CreateStudentAccount implements AuthEvent {
  const factory _CreateStudentAccount() = _$_CreateStudentAccount;
}

/// @nodoc
abstract class _$UpdateProfileCopyWith<$Res> {
  factory _$UpdateProfileCopyWith(
          _UpdateProfile value, $Res Function(_UpdateProfile) then) =
      __$UpdateProfileCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateProfileCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$UpdateProfileCopyWith<$Res> {
  __$UpdateProfileCopyWithImpl(
      _UpdateProfile _value, $Res Function(_UpdateProfile) _then)
      : super(_value, (v) => _then(v as _UpdateProfile));

  @override
  _UpdateProfile get _value => super._value as _UpdateProfile;
}

/// @nodoc
class _$_UpdateProfile implements _UpdateProfile {
  const _$_UpdateProfile();

  @override
  String toString() {
    return 'AuthEvent.updateProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UpdateProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result displayNameChanged(String input),
    @required Result emailChanged(String email),
    @required Result guardianEmailChanged(String email),
    @required Result genderChanged(GenderType gender),
    @required Result passwordChanged(String password, FIELD_VALIDATION mode),
    @required
        Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    @required Result toggledPasswordVisibility(),
    @required Result toggledSnackBarVisibility(bool value),
    @required Result signInWithEmailAndPassword(),
    @required Result createAccountWithEmailAndPassword(),
    @required Result createInstructorAccount(),
    @required Result createStudentAccount(),
    @required Result updateProfile(),
    @required Result emailPasswordReset(),
    @required Result updatePassword(),
    @required Result signInWithGoogle(@nullable Object incoming),
    @required Result signInWithFacebook(@nullable Object incoming),
    @required Result signInWithTwitter(@nullable Object incoming),
    @required
        Result signInWithCredentials(@nullable Object credential,
            @nullable AuthProvider provider, @nullable Object incoming),
    @required Result signOut(),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return updateProfile();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result displayNameChanged(String input),
    Result emailChanged(String email),
    Result guardianEmailChanged(String email),
    Result genderChanged(GenderType gender),
    Result passwordChanged(String password, FIELD_VALIDATION mode),
    Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    Result toggledPasswordVisibility(),
    Result toggledSnackBarVisibility(bool value),
    Result signInWithEmailAndPassword(),
    Result createAccountWithEmailAndPassword(),
    Result createInstructorAccount(),
    Result createStudentAccount(),
    Result updateProfile(),
    Result emailPasswordReset(),
    Result updatePassword(),
    Result signInWithGoogle(@nullable Object incoming),
    Result signInWithFacebook(@nullable Object incoming),
    Result signInWithTwitter(@nullable Object incoming),
    Result signInWithCredentials(@nullable Object credential,
        @nullable AuthProvider provider, @nullable Object incoming),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateProfile != null) {
      return updateProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result displayNameChanged(_DisplayNameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result guardianEmailChanged(_GuardianEmailChanged value),
    @required Result genderChanged(_GenderChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result newPasswordChanged(_NewPasswordChanged value),
    @required
        Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    @required
        Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required
        Result createAccountWithEmailAndPassword(
            _CreateAccountWithEmailAndPassword value),
    @required Result createInstructorAccount(_CreateInstructorAccount value),
    @required Result createStudentAccount(_CreateStudentAccount value),
    @required Result updateProfile(_UpdateProfile value),
    @required Result emailPasswordReset(_EmailPasswordReset value),
    @required Result updatePassword(_UpdatePassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
    @required Result signInWithTwitter(_SignInWithTwitter value),
    @required Result signInWithCredentials(_SignInWithCredentials value),
    @required Result signOut(_SignOut value),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return updateProfile(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result displayNameChanged(_DisplayNameChanged value),
    Result emailChanged(_EmailChanged value),
    Result guardianEmailChanged(_GuardianEmailChanged value),
    Result genderChanged(_GenderChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result newPasswordChanged(_NewPasswordChanged value),
    Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result createAccountWithEmailAndPassword(
        _CreateAccountWithEmailAndPassword value),
    Result createInstructorAccount(_CreateInstructorAccount value),
    Result createStudentAccount(_CreateStudentAccount value),
    Result updateProfile(_UpdateProfile value),
    Result emailPasswordReset(_EmailPasswordReset value),
    Result updatePassword(_UpdatePassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    Result signInWithTwitter(_SignInWithTwitter value),
    Result signInWithCredentials(_SignInWithCredentials value),
    Result signOut(_SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateProfile != null) {
      return updateProfile(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfile implements AuthEvent {
  const factory _UpdateProfile() = _$_UpdateProfile;
}

/// @nodoc
abstract class _$EmailPasswordResetCopyWith<$Res> {
  factory _$EmailPasswordResetCopyWith(
          _EmailPasswordReset value, $Res Function(_EmailPasswordReset) then) =
      __$EmailPasswordResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmailPasswordResetCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$EmailPasswordResetCopyWith<$Res> {
  __$EmailPasswordResetCopyWithImpl(
      _EmailPasswordReset _value, $Res Function(_EmailPasswordReset) _then)
      : super(_value, (v) => _then(v as _EmailPasswordReset));

  @override
  _EmailPasswordReset get _value => super._value as _EmailPasswordReset;
}

/// @nodoc
class _$_EmailPasswordReset implements _EmailPasswordReset {
  const _$_EmailPasswordReset();

  @override
  String toString() {
    return 'AuthEvent.emailPasswordReset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EmailPasswordReset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result displayNameChanged(String input),
    @required Result emailChanged(String email),
    @required Result guardianEmailChanged(String email),
    @required Result genderChanged(GenderType gender),
    @required Result passwordChanged(String password, FIELD_VALIDATION mode),
    @required
        Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    @required Result toggledPasswordVisibility(),
    @required Result toggledSnackBarVisibility(bool value),
    @required Result signInWithEmailAndPassword(),
    @required Result createAccountWithEmailAndPassword(),
    @required Result createInstructorAccount(),
    @required Result createStudentAccount(),
    @required Result updateProfile(),
    @required Result emailPasswordReset(),
    @required Result updatePassword(),
    @required Result signInWithGoogle(@nullable Object incoming),
    @required Result signInWithFacebook(@nullable Object incoming),
    @required Result signInWithTwitter(@nullable Object incoming),
    @required
        Result signInWithCredentials(@nullable Object credential,
            @nullable AuthProvider provider, @nullable Object incoming),
    @required Result signOut(),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return emailPasswordReset();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result displayNameChanged(String input),
    Result emailChanged(String email),
    Result guardianEmailChanged(String email),
    Result genderChanged(GenderType gender),
    Result passwordChanged(String password, FIELD_VALIDATION mode),
    Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    Result toggledPasswordVisibility(),
    Result toggledSnackBarVisibility(bool value),
    Result signInWithEmailAndPassword(),
    Result createAccountWithEmailAndPassword(),
    Result createInstructorAccount(),
    Result createStudentAccount(),
    Result updateProfile(),
    Result emailPasswordReset(),
    Result updatePassword(),
    Result signInWithGoogle(@nullable Object incoming),
    Result signInWithFacebook(@nullable Object incoming),
    Result signInWithTwitter(@nullable Object incoming),
    Result signInWithCredentials(@nullable Object credential,
        @nullable AuthProvider provider, @nullable Object incoming),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailPasswordReset != null) {
      return emailPasswordReset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result displayNameChanged(_DisplayNameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result guardianEmailChanged(_GuardianEmailChanged value),
    @required Result genderChanged(_GenderChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result newPasswordChanged(_NewPasswordChanged value),
    @required
        Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    @required
        Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required
        Result createAccountWithEmailAndPassword(
            _CreateAccountWithEmailAndPassword value),
    @required Result createInstructorAccount(_CreateInstructorAccount value),
    @required Result createStudentAccount(_CreateStudentAccount value),
    @required Result updateProfile(_UpdateProfile value),
    @required Result emailPasswordReset(_EmailPasswordReset value),
    @required Result updatePassword(_UpdatePassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
    @required Result signInWithTwitter(_SignInWithTwitter value),
    @required Result signInWithCredentials(_SignInWithCredentials value),
    @required Result signOut(_SignOut value),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return emailPasswordReset(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result displayNameChanged(_DisplayNameChanged value),
    Result emailChanged(_EmailChanged value),
    Result guardianEmailChanged(_GuardianEmailChanged value),
    Result genderChanged(_GenderChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result newPasswordChanged(_NewPasswordChanged value),
    Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result createAccountWithEmailAndPassword(
        _CreateAccountWithEmailAndPassword value),
    Result createInstructorAccount(_CreateInstructorAccount value),
    Result createStudentAccount(_CreateStudentAccount value),
    Result updateProfile(_UpdateProfile value),
    Result emailPasswordReset(_EmailPasswordReset value),
    Result updatePassword(_UpdatePassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    Result signInWithTwitter(_SignInWithTwitter value),
    Result signInWithCredentials(_SignInWithCredentials value),
    Result signOut(_SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailPasswordReset != null) {
      return emailPasswordReset(this);
    }
    return orElse();
  }
}

abstract class _EmailPasswordReset implements AuthEvent {
  const factory _EmailPasswordReset() = _$_EmailPasswordReset;
}

/// @nodoc
abstract class _$UpdatePasswordCopyWith<$Res> {
  factory _$UpdatePasswordCopyWith(
          _UpdatePassword value, $Res Function(_UpdatePassword) then) =
      __$UpdatePasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdatePasswordCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$UpdatePasswordCopyWith<$Res> {
  __$UpdatePasswordCopyWithImpl(
      _UpdatePassword _value, $Res Function(_UpdatePassword) _then)
      : super(_value, (v) => _then(v as _UpdatePassword));

  @override
  _UpdatePassword get _value => super._value as _UpdatePassword;
}

/// @nodoc
class _$_UpdatePassword implements _UpdatePassword {
  const _$_UpdatePassword();

  @override
  String toString() {
    return 'AuthEvent.updatePassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UpdatePassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result displayNameChanged(String input),
    @required Result emailChanged(String email),
    @required Result guardianEmailChanged(String email),
    @required Result genderChanged(GenderType gender),
    @required Result passwordChanged(String password, FIELD_VALIDATION mode),
    @required
        Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    @required Result toggledPasswordVisibility(),
    @required Result toggledSnackBarVisibility(bool value),
    @required Result signInWithEmailAndPassword(),
    @required Result createAccountWithEmailAndPassword(),
    @required Result createInstructorAccount(),
    @required Result createStudentAccount(),
    @required Result updateProfile(),
    @required Result emailPasswordReset(),
    @required Result updatePassword(),
    @required Result signInWithGoogle(@nullable Object incoming),
    @required Result signInWithFacebook(@nullable Object incoming),
    @required Result signInWithTwitter(@nullable Object incoming),
    @required
        Result signInWithCredentials(@nullable Object credential,
            @nullable AuthProvider provider, @nullable Object incoming),
    @required Result signOut(),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return updatePassword();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result displayNameChanged(String input),
    Result emailChanged(String email),
    Result guardianEmailChanged(String email),
    Result genderChanged(GenderType gender),
    Result passwordChanged(String password, FIELD_VALIDATION mode),
    Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    Result toggledPasswordVisibility(),
    Result toggledSnackBarVisibility(bool value),
    Result signInWithEmailAndPassword(),
    Result createAccountWithEmailAndPassword(),
    Result createInstructorAccount(),
    Result createStudentAccount(),
    Result updateProfile(),
    Result emailPasswordReset(),
    Result updatePassword(),
    Result signInWithGoogle(@nullable Object incoming),
    Result signInWithFacebook(@nullable Object incoming),
    Result signInWithTwitter(@nullable Object incoming),
    Result signInWithCredentials(@nullable Object credential,
        @nullable AuthProvider provider, @nullable Object incoming),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updatePassword != null) {
      return updatePassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result displayNameChanged(_DisplayNameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result guardianEmailChanged(_GuardianEmailChanged value),
    @required Result genderChanged(_GenderChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result newPasswordChanged(_NewPasswordChanged value),
    @required
        Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    @required
        Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required
        Result createAccountWithEmailAndPassword(
            _CreateAccountWithEmailAndPassword value),
    @required Result createInstructorAccount(_CreateInstructorAccount value),
    @required Result createStudentAccount(_CreateStudentAccount value),
    @required Result updateProfile(_UpdateProfile value),
    @required Result emailPasswordReset(_EmailPasswordReset value),
    @required Result updatePassword(_UpdatePassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
    @required Result signInWithTwitter(_SignInWithTwitter value),
    @required Result signInWithCredentials(_SignInWithCredentials value),
    @required Result signOut(_SignOut value),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return updatePassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result displayNameChanged(_DisplayNameChanged value),
    Result emailChanged(_EmailChanged value),
    Result guardianEmailChanged(_GuardianEmailChanged value),
    Result genderChanged(_GenderChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result newPasswordChanged(_NewPasswordChanged value),
    Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result createAccountWithEmailAndPassword(
        _CreateAccountWithEmailAndPassword value),
    Result createInstructorAccount(_CreateInstructorAccount value),
    Result createStudentAccount(_CreateStudentAccount value),
    Result updateProfile(_UpdateProfile value),
    Result emailPasswordReset(_EmailPasswordReset value),
    Result updatePassword(_UpdatePassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    Result signInWithTwitter(_SignInWithTwitter value),
    Result signInWithCredentials(_SignInWithCredentials value),
    Result signOut(_SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updatePassword != null) {
      return updatePassword(this);
    }
    return orElse();
  }
}

abstract class _UpdatePassword implements AuthEvent {
  const factory _UpdatePassword() = _$_UpdatePassword;
}

/// @nodoc
abstract class _$SignInWithGoogleCopyWith<$Res> {
  factory _$SignInWithGoogleCopyWith(
          _SignInWithGoogle value, $Res Function(_SignInWithGoogle) then) =
      __$SignInWithGoogleCopyWithImpl<$Res>;
  $Res call({@nullable Object incoming});
}

/// @nodoc
class __$SignInWithGoogleCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$SignInWithGoogleCopyWith<$Res> {
  __$SignInWithGoogleCopyWithImpl(
      _SignInWithGoogle _value, $Res Function(_SignInWithGoogle) _then)
      : super(_value, (v) => _then(v as _SignInWithGoogle));

  @override
  _SignInWithGoogle get _value => super._value as _SignInWithGoogle;

  @override
  $Res call({
    Object incoming = freezed,
  }) {
    return _then(_SignInWithGoogle(
      incoming == freezed ? _value.incoming : incoming,
    ));
  }
}

/// @nodoc
class _$_SignInWithGoogle implements _SignInWithGoogle {
  const _$_SignInWithGoogle([@nullable this.incoming]);

  @override
  @nullable
  final Object incoming;

  @override
  String toString() {
    return 'AuthEvent.signInWithGoogle(incoming: $incoming)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInWithGoogle &&
            (identical(other.incoming, incoming) ||
                const DeepCollectionEquality()
                    .equals(other.incoming, incoming)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(incoming);

  @override
  _$SignInWithGoogleCopyWith<_SignInWithGoogle> get copyWith =>
      __$SignInWithGoogleCopyWithImpl<_SignInWithGoogle>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result displayNameChanged(String input),
    @required Result emailChanged(String email),
    @required Result guardianEmailChanged(String email),
    @required Result genderChanged(GenderType gender),
    @required Result passwordChanged(String password, FIELD_VALIDATION mode),
    @required
        Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    @required Result toggledPasswordVisibility(),
    @required Result toggledSnackBarVisibility(bool value),
    @required Result signInWithEmailAndPassword(),
    @required Result createAccountWithEmailAndPassword(),
    @required Result createInstructorAccount(),
    @required Result createStudentAccount(),
    @required Result updateProfile(),
    @required Result emailPasswordReset(),
    @required Result updatePassword(),
    @required Result signInWithGoogle(@nullable Object incoming),
    @required Result signInWithFacebook(@nullable Object incoming),
    @required Result signInWithTwitter(@nullable Object incoming),
    @required
        Result signInWithCredentials(@nullable Object credential,
            @nullable AuthProvider provider, @nullable Object incoming),
    @required Result signOut(),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return signInWithGoogle(incoming);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result displayNameChanged(String input),
    Result emailChanged(String email),
    Result guardianEmailChanged(String email),
    Result genderChanged(GenderType gender),
    Result passwordChanged(String password, FIELD_VALIDATION mode),
    Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    Result toggledPasswordVisibility(),
    Result toggledSnackBarVisibility(bool value),
    Result signInWithEmailAndPassword(),
    Result createAccountWithEmailAndPassword(),
    Result createInstructorAccount(),
    Result createStudentAccount(),
    Result updateProfile(),
    Result emailPasswordReset(),
    Result updatePassword(),
    Result signInWithGoogle(@nullable Object incoming),
    Result signInWithFacebook(@nullable Object incoming),
    Result signInWithTwitter(@nullable Object incoming),
    Result signInWithCredentials(@nullable Object credential,
        @nullable AuthProvider provider, @nullable Object incoming),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGoogle != null) {
      return signInWithGoogle(incoming);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result displayNameChanged(_DisplayNameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result guardianEmailChanged(_GuardianEmailChanged value),
    @required Result genderChanged(_GenderChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result newPasswordChanged(_NewPasswordChanged value),
    @required
        Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    @required
        Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required
        Result createAccountWithEmailAndPassword(
            _CreateAccountWithEmailAndPassword value),
    @required Result createInstructorAccount(_CreateInstructorAccount value),
    @required Result createStudentAccount(_CreateStudentAccount value),
    @required Result updateProfile(_UpdateProfile value),
    @required Result emailPasswordReset(_EmailPasswordReset value),
    @required Result updatePassword(_UpdatePassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
    @required Result signInWithTwitter(_SignInWithTwitter value),
    @required Result signInWithCredentials(_SignInWithCredentials value),
    @required Result signOut(_SignOut value),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result displayNameChanged(_DisplayNameChanged value),
    Result emailChanged(_EmailChanged value),
    Result guardianEmailChanged(_GuardianEmailChanged value),
    Result genderChanged(_GenderChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result newPasswordChanged(_NewPasswordChanged value),
    Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result createAccountWithEmailAndPassword(
        _CreateAccountWithEmailAndPassword value),
    Result createInstructorAccount(_CreateInstructorAccount value),
    Result createStudentAccount(_CreateStudentAccount value),
    Result updateProfile(_UpdateProfile value),
    Result emailPasswordReset(_EmailPasswordReset value),
    Result updatePassword(_UpdatePassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    Result signInWithTwitter(_SignInWithTwitter value),
    Result signInWithCredentials(_SignInWithCredentials value),
    Result signOut(_SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGoogle implements AuthEvent {
  const factory _SignInWithGoogle([@nullable Object incoming]) =
      _$_SignInWithGoogle;

  @nullable
  Object get incoming;
  _$SignInWithGoogleCopyWith<_SignInWithGoogle> get copyWith;
}

/// @nodoc
abstract class _$SignInWithFacebookCopyWith<$Res> {
  factory _$SignInWithFacebookCopyWith(
          _SignInWithFacebook value, $Res Function(_SignInWithFacebook) then) =
      __$SignInWithFacebookCopyWithImpl<$Res>;
  $Res call({@nullable Object incoming});
}

/// @nodoc
class __$SignInWithFacebookCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$SignInWithFacebookCopyWith<$Res> {
  __$SignInWithFacebookCopyWithImpl(
      _SignInWithFacebook _value, $Res Function(_SignInWithFacebook) _then)
      : super(_value, (v) => _then(v as _SignInWithFacebook));

  @override
  _SignInWithFacebook get _value => super._value as _SignInWithFacebook;

  @override
  $Res call({
    Object incoming = freezed,
  }) {
    return _then(_SignInWithFacebook(
      incoming == freezed ? _value.incoming : incoming,
    ));
  }
}

/// @nodoc
class _$_SignInWithFacebook implements _SignInWithFacebook {
  const _$_SignInWithFacebook([@nullable this.incoming]);

  @override
  @nullable
  final Object incoming;

  @override
  String toString() {
    return 'AuthEvent.signInWithFacebook(incoming: $incoming)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInWithFacebook &&
            (identical(other.incoming, incoming) ||
                const DeepCollectionEquality()
                    .equals(other.incoming, incoming)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(incoming);

  @override
  _$SignInWithFacebookCopyWith<_SignInWithFacebook> get copyWith =>
      __$SignInWithFacebookCopyWithImpl<_SignInWithFacebook>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result displayNameChanged(String input),
    @required Result emailChanged(String email),
    @required Result guardianEmailChanged(String email),
    @required Result genderChanged(GenderType gender),
    @required Result passwordChanged(String password, FIELD_VALIDATION mode),
    @required
        Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    @required Result toggledPasswordVisibility(),
    @required Result toggledSnackBarVisibility(bool value),
    @required Result signInWithEmailAndPassword(),
    @required Result createAccountWithEmailAndPassword(),
    @required Result createInstructorAccount(),
    @required Result createStudentAccount(),
    @required Result updateProfile(),
    @required Result emailPasswordReset(),
    @required Result updatePassword(),
    @required Result signInWithGoogle(@nullable Object incoming),
    @required Result signInWithFacebook(@nullable Object incoming),
    @required Result signInWithTwitter(@nullable Object incoming),
    @required
        Result signInWithCredentials(@nullable Object credential,
            @nullable AuthProvider provider, @nullable Object incoming),
    @required Result signOut(),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return signInWithFacebook(incoming);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result displayNameChanged(String input),
    Result emailChanged(String email),
    Result guardianEmailChanged(String email),
    Result genderChanged(GenderType gender),
    Result passwordChanged(String password, FIELD_VALIDATION mode),
    Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    Result toggledPasswordVisibility(),
    Result toggledSnackBarVisibility(bool value),
    Result signInWithEmailAndPassword(),
    Result createAccountWithEmailAndPassword(),
    Result createInstructorAccount(),
    Result createStudentAccount(),
    Result updateProfile(),
    Result emailPasswordReset(),
    Result updatePassword(),
    Result signInWithGoogle(@nullable Object incoming),
    Result signInWithFacebook(@nullable Object incoming),
    Result signInWithTwitter(@nullable Object incoming),
    Result signInWithCredentials(@nullable Object credential,
        @nullable AuthProvider provider, @nullable Object incoming),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithFacebook != null) {
      return signInWithFacebook(incoming);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result displayNameChanged(_DisplayNameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result guardianEmailChanged(_GuardianEmailChanged value),
    @required Result genderChanged(_GenderChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result newPasswordChanged(_NewPasswordChanged value),
    @required
        Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    @required
        Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required
        Result createAccountWithEmailAndPassword(
            _CreateAccountWithEmailAndPassword value),
    @required Result createInstructorAccount(_CreateInstructorAccount value),
    @required Result createStudentAccount(_CreateStudentAccount value),
    @required Result updateProfile(_UpdateProfile value),
    @required Result emailPasswordReset(_EmailPasswordReset value),
    @required Result updatePassword(_UpdatePassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
    @required Result signInWithTwitter(_SignInWithTwitter value),
    @required Result signInWithCredentials(_SignInWithCredentials value),
    @required Result signOut(_SignOut value),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return signInWithFacebook(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result displayNameChanged(_DisplayNameChanged value),
    Result emailChanged(_EmailChanged value),
    Result guardianEmailChanged(_GuardianEmailChanged value),
    Result genderChanged(_GenderChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result newPasswordChanged(_NewPasswordChanged value),
    Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result createAccountWithEmailAndPassword(
        _CreateAccountWithEmailAndPassword value),
    Result createInstructorAccount(_CreateInstructorAccount value),
    Result createStudentAccount(_CreateStudentAccount value),
    Result updateProfile(_UpdateProfile value),
    Result emailPasswordReset(_EmailPasswordReset value),
    Result updatePassword(_UpdatePassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    Result signInWithTwitter(_SignInWithTwitter value),
    Result signInWithCredentials(_SignInWithCredentials value),
    Result signOut(_SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithFacebook != null) {
      return signInWithFacebook(this);
    }
    return orElse();
  }
}

abstract class _SignInWithFacebook implements AuthEvent {
  const factory _SignInWithFacebook([@nullable Object incoming]) =
      _$_SignInWithFacebook;

  @nullable
  Object get incoming;
  _$SignInWithFacebookCopyWith<_SignInWithFacebook> get copyWith;
}

/// @nodoc
abstract class _$SignInWithTwitterCopyWith<$Res> {
  factory _$SignInWithTwitterCopyWith(
          _SignInWithTwitter value, $Res Function(_SignInWithTwitter) then) =
      __$SignInWithTwitterCopyWithImpl<$Res>;
  $Res call({@nullable Object incoming});
}

/// @nodoc
class __$SignInWithTwitterCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$SignInWithTwitterCopyWith<$Res> {
  __$SignInWithTwitterCopyWithImpl(
      _SignInWithTwitter _value, $Res Function(_SignInWithTwitter) _then)
      : super(_value, (v) => _then(v as _SignInWithTwitter));

  @override
  _SignInWithTwitter get _value => super._value as _SignInWithTwitter;

  @override
  $Res call({
    Object incoming = freezed,
  }) {
    return _then(_SignInWithTwitter(
      incoming == freezed ? _value.incoming : incoming,
    ));
  }
}

/// @nodoc
class _$_SignInWithTwitter implements _SignInWithTwitter {
  const _$_SignInWithTwitter([@nullable this.incoming]);

  @override
  @nullable
  final Object incoming;

  @override
  String toString() {
    return 'AuthEvent.signInWithTwitter(incoming: $incoming)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInWithTwitter &&
            (identical(other.incoming, incoming) ||
                const DeepCollectionEquality()
                    .equals(other.incoming, incoming)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(incoming);

  @override
  _$SignInWithTwitterCopyWith<_SignInWithTwitter> get copyWith =>
      __$SignInWithTwitterCopyWithImpl<_SignInWithTwitter>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result displayNameChanged(String input),
    @required Result emailChanged(String email),
    @required Result guardianEmailChanged(String email),
    @required Result genderChanged(GenderType gender),
    @required Result passwordChanged(String password, FIELD_VALIDATION mode),
    @required
        Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    @required Result toggledPasswordVisibility(),
    @required Result toggledSnackBarVisibility(bool value),
    @required Result signInWithEmailAndPassword(),
    @required Result createAccountWithEmailAndPassword(),
    @required Result createInstructorAccount(),
    @required Result createStudentAccount(),
    @required Result updateProfile(),
    @required Result emailPasswordReset(),
    @required Result updatePassword(),
    @required Result signInWithGoogle(@nullable Object incoming),
    @required Result signInWithFacebook(@nullable Object incoming),
    @required Result signInWithTwitter(@nullable Object incoming),
    @required
        Result signInWithCredentials(@nullable Object credential,
            @nullable AuthProvider provider, @nullable Object incoming),
    @required Result signOut(),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return signInWithTwitter(incoming);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result displayNameChanged(String input),
    Result emailChanged(String email),
    Result guardianEmailChanged(String email),
    Result genderChanged(GenderType gender),
    Result passwordChanged(String password, FIELD_VALIDATION mode),
    Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    Result toggledPasswordVisibility(),
    Result toggledSnackBarVisibility(bool value),
    Result signInWithEmailAndPassword(),
    Result createAccountWithEmailAndPassword(),
    Result createInstructorAccount(),
    Result createStudentAccount(),
    Result updateProfile(),
    Result emailPasswordReset(),
    Result updatePassword(),
    Result signInWithGoogle(@nullable Object incoming),
    Result signInWithFacebook(@nullable Object incoming),
    Result signInWithTwitter(@nullable Object incoming),
    Result signInWithCredentials(@nullable Object credential,
        @nullable AuthProvider provider, @nullable Object incoming),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithTwitter != null) {
      return signInWithTwitter(incoming);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result displayNameChanged(_DisplayNameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result guardianEmailChanged(_GuardianEmailChanged value),
    @required Result genderChanged(_GenderChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result newPasswordChanged(_NewPasswordChanged value),
    @required
        Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    @required
        Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required
        Result createAccountWithEmailAndPassword(
            _CreateAccountWithEmailAndPassword value),
    @required Result createInstructorAccount(_CreateInstructorAccount value),
    @required Result createStudentAccount(_CreateStudentAccount value),
    @required Result updateProfile(_UpdateProfile value),
    @required Result emailPasswordReset(_EmailPasswordReset value),
    @required Result updatePassword(_UpdatePassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
    @required Result signInWithTwitter(_SignInWithTwitter value),
    @required Result signInWithCredentials(_SignInWithCredentials value),
    @required Result signOut(_SignOut value),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return signInWithTwitter(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result displayNameChanged(_DisplayNameChanged value),
    Result emailChanged(_EmailChanged value),
    Result guardianEmailChanged(_GuardianEmailChanged value),
    Result genderChanged(_GenderChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result newPasswordChanged(_NewPasswordChanged value),
    Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result createAccountWithEmailAndPassword(
        _CreateAccountWithEmailAndPassword value),
    Result createInstructorAccount(_CreateInstructorAccount value),
    Result createStudentAccount(_CreateStudentAccount value),
    Result updateProfile(_UpdateProfile value),
    Result emailPasswordReset(_EmailPasswordReset value),
    Result updatePassword(_UpdatePassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    Result signInWithTwitter(_SignInWithTwitter value),
    Result signInWithCredentials(_SignInWithCredentials value),
    Result signOut(_SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithTwitter != null) {
      return signInWithTwitter(this);
    }
    return orElse();
  }
}

abstract class _SignInWithTwitter implements AuthEvent {
  const factory _SignInWithTwitter([@nullable Object incoming]) =
      _$_SignInWithTwitter;

  @nullable
  Object get incoming;
  _$SignInWithTwitterCopyWith<_SignInWithTwitter> get copyWith;
}

/// @nodoc
abstract class _$SignInWithCredentialsCopyWith<$Res> {
  factory _$SignInWithCredentialsCopyWith(_SignInWithCredentials value,
          $Res Function(_SignInWithCredentials) then) =
      __$SignInWithCredentialsCopyWithImpl<$Res>;
  $Res call(
      {@nullable Object credential,
      @nullable AuthProvider provider,
      @nullable Object incoming});
}

/// @nodoc
class __$SignInWithCredentialsCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$SignInWithCredentialsCopyWith<$Res> {
  __$SignInWithCredentialsCopyWithImpl(_SignInWithCredentials _value,
      $Res Function(_SignInWithCredentials) _then)
      : super(_value, (v) => _then(v as _SignInWithCredentials));

  @override
  _SignInWithCredentials get _value => super._value as _SignInWithCredentials;

  @override
  $Res call({
    Object credential = freezed,
    Object provider = freezed,
    Object incoming = freezed,
  }) {
    return _then(_SignInWithCredentials(
      credential: credential == freezed ? _value.credential : credential,
      provider:
          provider == freezed ? _value.provider : provider as AuthProvider,
      incoming: incoming == freezed ? _value.incoming : incoming,
    ));
  }
}

/// @nodoc
class _$_SignInWithCredentials implements _SignInWithCredentials {
  const _$_SignInWithCredentials(
      {@nullable this.credential,
      @nullable this.provider,
      @nullable this.incoming});

  @override
  @nullable
  final Object credential;
  @override
  @nullable
  final AuthProvider provider;
  @override
  @nullable
  final Object incoming;

  @override
  String toString() {
    return 'AuthEvent.signInWithCredentials(credential: $credential, provider: $provider, incoming: $incoming)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInWithCredentials &&
            (identical(other.credential, credential) ||
                const DeepCollectionEquality()
                    .equals(other.credential, credential)) &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality()
                    .equals(other.provider, provider)) &&
            (identical(other.incoming, incoming) ||
                const DeepCollectionEquality()
                    .equals(other.incoming, incoming)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(credential) ^
      const DeepCollectionEquality().hash(provider) ^
      const DeepCollectionEquality().hash(incoming);

  @override
  _$SignInWithCredentialsCopyWith<_SignInWithCredentials> get copyWith =>
      __$SignInWithCredentialsCopyWithImpl<_SignInWithCredentials>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result displayNameChanged(String input),
    @required Result emailChanged(String email),
    @required Result guardianEmailChanged(String email),
    @required Result genderChanged(GenderType gender),
    @required Result passwordChanged(String password, FIELD_VALIDATION mode),
    @required
        Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    @required Result toggledPasswordVisibility(),
    @required Result toggledSnackBarVisibility(bool value),
    @required Result signInWithEmailAndPassword(),
    @required Result createAccountWithEmailAndPassword(),
    @required Result createInstructorAccount(),
    @required Result createStudentAccount(),
    @required Result updateProfile(),
    @required Result emailPasswordReset(),
    @required Result updatePassword(),
    @required Result signInWithGoogle(@nullable Object incoming),
    @required Result signInWithFacebook(@nullable Object incoming),
    @required Result signInWithTwitter(@nullable Object incoming),
    @required
        Result signInWithCredentials(@nullable Object credential,
            @nullable AuthProvider provider, @nullable Object incoming),
    @required Result signOut(),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return signInWithCredentials(credential, provider, incoming);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result displayNameChanged(String input),
    Result emailChanged(String email),
    Result guardianEmailChanged(String email),
    Result genderChanged(GenderType gender),
    Result passwordChanged(String password, FIELD_VALIDATION mode),
    Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    Result toggledPasswordVisibility(),
    Result toggledSnackBarVisibility(bool value),
    Result signInWithEmailAndPassword(),
    Result createAccountWithEmailAndPassword(),
    Result createInstructorAccount(),
    Result createStudentAccount(),
    Result updateProfile(),
    Result emailPasswordReset(),
    Result updatePassword(),
    Result signInWithGoogle(@nullable Object incoming),
    Result signInWithFacebook(@nullable Object incoming),
    Result signInWithTwitter(@nullable Object incoming),
    Result signInWithCredentials(@nullable Object credential,
        @nullable AuthProvider provider, @nullable Object incoming),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithCredentials != null) {
      return signInWithCredentials(credential, provider, incoming);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result displayNameChanged(_DisplayNameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result guardianEmailChanged(_GuardianEmailChanged value),
    @required Result genderChanged(_GenderChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result newPasswordChanged(_NewPasswordChanged value),
    @required
        Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    @required
        Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required
        Result createAccountWithEmailAndPassword(
            _CreateAccountWithEmailAndPassword value),
    @required Result createInstructorAccount(_CreateInstructorAccount value),
    @required Result createStudentAccount(_CreateStudentAccount value),
    @required Result updateProfile(_UpdateProfile value),
    @required Result emailPasswordReset(_EmailPasswordReset value),
    @required Result updatePassword(_UpdatePassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
    @required Result signInWithTwitter(_SignInWithTwitter value),
    @required Result signInWithCredentials(_SignInWithCredentials value),
    @required Result signOut(_SignOut value),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return signInWithCredentials(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result displayNameChanged(_DisplayNameChanged value),
    Result emailChanged(_EmailChanged value),
    Result guardianEmailChanged(_GuardianEmailChanged value),
    Result genderChanged(_GenderChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result newPasswordChanged(_NewPasswordChanged value),
    Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result createAccountWithEmailAndPassword(
        _CreateAccountWithEmailAndPassword value),
    Result createInstructorAccount(_CreateInstructorAccount value),
    Result createStudentAccount(_CreateStudentAccount value),
    Result updateProfile(_UpdateProfile value),
    Result emailPasswordReset(_EmailPasswordReset value),
    Result updatePassword(_UpdatePassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    Result signInWithTwitter(_SignInWithTwitter value),
    Result signInWithCredentials(_SignInWithCredentials value),
    Result signOut(_SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithCredentials != null) {
      return signInWithCredentials(this);
    }
    return orElse();
  }
}

abstract class _SignInWithCredentials implements AuthEvent {
  const factory _SignInWithCredentials(
      {@nullable Object credential,
      @nullable AuthProvider provider,
      @nullable Object incoming}) = _$_SignInWithCredentials;

  @nullable
  Object get credential;
  @nullable
  AuthProvider get provider;
  @nullable
  Object get incoming;
  _$SignInWithCredentialsCopyWith<_SignInWithCredentials> get copyWith;
}

/// @nodoc
abstract class _$SignOutCopyWith<$Res> {
  factory _$SignOutCopyWith(_SignOut value, $Res Function(_SignOut) then) =
      __$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$SignOutCopyWith<$Res> {
  __$SignOutCopyWithImpl(_SignOut _value, $Res Function(_SignOut) _then)
      : super(_value, (v) => _then(v as _SignOut));

  @override
  _SignOut get _value => super._value as _SignOut;
}

/// @nodoc
class _$_SignOut implements _SignOut {
  const _$_SignOut();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result displayNameChanged(String input),
    @required Result emailChanged(String email),
    @required Result guardianEmailChanged(String email),
    @required Result genderChanged(GenderType gender),
    @required Result passwordChanged(String password, FIELD_VALIDATION mode),
    @required
        Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    @required Result toggledPasswordVisibility(),
    @required Result toggledSnackBarVisibility(bool value),
    @required Result signInWithEmailAndPassword(),
    @required Result createAccountWithEmailAndPassword(),
    @required Result createInstructorAccount(),
    @required Result createStudentAccount(),
    @required Result updateProfile(),
    @required Result emailPasswordReset(),
    @required Result updatePassword(),
    @required Result signInWithGoogle(@nullable Object incoming),
    @required Result signInWithFacebook(@nullable Object incoming),
    @required Result signInWithTwitter(@nullable Object incoming),
    @required
        Result signInWithCredentials(@nullable Object credential,
            @nullable AuthProvider provider, @nullable Object incoming),
    @required Result signOut(),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return signOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result displayNameChanged(String input),
    Result emailChanged(String email),
    Result guardianEmailChanged(String email),
    Result genderChanged(GenderType gender),
    Result passwordChanged(String password, FIELD_VALIDATION mode),
    Result newPasswordChanged(String newPassword, FIELD_VALIDATION mode),
    Result toggledPasswordVisibility(),
    Result toggledSnackBarVisibility(bool value),
    Result signInWithEmailAndPassword(),
    Result createAccountWithEmailAndPassword(),
    Result createInstructorAccount(),
    Result createStudentAccount(),
    Result updateProfile(),
    Result emailPasswordReset(),
    Result updatePassword(),
    Result signInWithGoogle(@nullable Object incoming),
    Result signInWithFacebook(@nullable Object incoming),
    Result signInWithTwitter(@nullable Object incoming),
    Result signInWithCredentials(@nullable Object credential,
        @nullable AuthProvider provider, @nullable Object incoming),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result displayNameChanged(_DisplayNameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result guardianEmailChanged(_GuardianEmailChanged value),
    @required Result genderChanged(_GenderChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result newPasswordChanged(_NewPasswordChanged value),
    @required
        Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    @required
        Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required
        Result createAccountWithEmailAndPassword(
            _CreateAccountWithEmailAndPassword value),
    @required Result createInstructorAccount(_CreateInstructorAccount value),
    @required Result createStudentAccount(_CreateStudentAccount value),
    @required Result updateProfile(_UpdateProfile value),
    @required Result emailPasswordReset(_EmailPasswordReset value),
    @required Result updatePassword(_UpdatePassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
    @required Result signInWithTwitter(_SignInWithTwitter value),
    @required Result signInWithCredentials(_SignInWithCredentials value),
    @required Result signOut(_SignOut value),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(guardianEmailChanged != null);
    assert(genderChanged != null);
    assert(passwordChanged != null);
    assert(newPasswordChanged != null);
    assert(toggledPasswordVisibility != null);
    assert(toggledSnackBarVisibility != null);
    assert(signInWithEmailAndPassword != null);
    assert(createAccountWithEmailAndPassword != null);
    assert(createInstructorAccount != null);
    assert(createStudentAccount != null);
    assert(updateProfile != null);
    assert(emailPasswordReset != null);
    assert(updatePassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithTwitter != null);
    assert(signInWithCredentials != null);
    assert(signOut != null);
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result displayNameChanged(_DisplayNameChanged value),
    Result emailChanged(_EmailChanged value),
    Result guardianEmailChanged(_GuardianEmailChanged value),
    Result genderChanged(_GenderChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result newPasswordChanged(_NewPasswordChanged value),
    Result toggledPasswordVisibility(_ToggledPasswordVisibility value),
    Result toggledSnackBarVisibility(_ToggledSnackBarVisibility value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result createAccountWithEmailAndPassword(
        _CreateAccountWithEmailAndPassword value),
    Result createInstructorAccount(_CreateInstructorAccount value),
    Result createStudentAccount(_CreateStudentAccount value),
    Result updateProfile(_UpdateProfile value),
    Result emailPasswordReset(_EmailPasswordReset value),
    Result updatePassword(_UpdatePassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    Result signInWithTwitter(_SignInWithTwitter value),
    Result signInWithCredentials(_SignInWithCredentials value),
    Result signOut(_SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthEvent {
  const factory _SignOut() = _$_SignOut;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  _AuthState call(
      {@required DisplayName displayName,
      @required EmailAddress emailAddress,
      @required EmailAddress guardianEmailAddress,
      @required Gender gender,
      @required Password password,
      @required Password newPassword,
      Subscription subscription,
      bool isLoading = false,
      bool validate = false,
      bool passwordHidden = true,
      Option<Either<AuthFailure, Unit>> authStatus = const None(),
      bool snackbarDismissed = true}) {
    return _AuthState(
      displayName: displayName,
      emailAddress: emailAddress,
      guardianEmailAddress: guardianEmailAddress,
      gender: gender,
      password: password,
      newPassword: newPassword,
      subscription: subscription,
      isLoading: isLoading,
      validate: validate,
      passwordHidden: passwordHidden,
      authStatus: authStatus,
      snackbarDismissed: snackbarDismissed,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  DisplayName get displayName;
  EmailAddress get emailAddress;
  EmailAddress get guardianEmailAddress;
  Gender get gender;
  Password get password;
  Password get newPassword;
  Subscription get subscription;
  bool get isLoading;
  bool get validate;
  bool get passwordHidden;
  Option<Either<AuthFailure, Unit>> get authStatus;
  bool get snackbarDismissed;

  $AuthStateCopyWith<AuthState> get copyWith;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {DisplayName displayName,
      EmailAddress emailAddress,
      EmailAddress guardianEmailAddress,
      Gender gender,
      Password password,
      Password newPassword,
      Subscription subscription,
      bool isLoading,
      bool validate,
      bool passwordHidden,
      Option<Either<AuthFailure, Unit>> authStatus,
      bool snackbarDismissed});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object displayName = freezed,
    Object emailAddress = freezed,
    Object guardianEmailAddress = freezed,
    Object gender = freezed,
    Object password = freezed,
    Object newPassword = freezed,
    Object subscription = freezed,
    Object isLoading = freezed,
    Object validate = freezed,
    Object passwordHidden = freezed,
    Object authStatus = freezed,
    Object snackbarDismissed = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName as DisplayName,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      guardianEmailAddress: guardianEmailAddress == freezed
          ? _value.guardianEmailAddress
          : guardianEmailAddress as EmailAddress,
      gender: gender == freezed ? _value.gender : gender as Gender,
      password: password == freezed ? _value.password : password as Password,
      newPassword:
          newPassword == freezed ? _value.newPassword : newPassword as Password,
      subscription: subscription == freezed
          ? _value.subscription
          : subscription as Subscription,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      passwordHidden: passwordHidden == freezed
          ? _value.passwordHidden
          : passwordHidden as bool,
      authStatus: authStatus == freezed
          ? _value.authStatus
          : authStatus as Option<Either<AuthFailure, Unit>>,
      snackbarDismissed: snackbarDismissed == freezed
          ? _value.snackbarDismissed
          : snackbarDismissed as bool,
    ));
  }
}

/// @nodoc
abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {DisplayName displayName,
      EmailAddress emailAddress,
      EmailAddress guardianEmailAddress,
      Gender gender,
      Password password,
      Password newPassword,
      Subscription subscription,
      bool isLoading,
      bool validate,
      bool passwordHidden,
      Option<Either<AuthFailure, Unit>> authStatus,
      bool snackbarDismissed});
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object displayName = freezed,
    Object emailAddress = freezed,
    Object guardianEmailAddress = freezed,
    Object gender = freezed,
    Object password = freezed,
    Object newPassword = freezed,
    Object subscription = freezed,
    Object isLoading = freezed,
    Object validate = freezed,
    Object passwordHidden = freezed,
    Object authStatus = freezed,
    Object snackbarDismissed = freezed,
  }) {
    return _then(_AuthState(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName as DisplayName,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      guardianEmailAddress: guardianEmailAddress == freezed
          ? _value.guardianEmailAddress
          : guardianEmailAddress as EmailAddress,
      gender: gender == freezed ? _value.gender : gender as Gender,
      password: password == freezed ? _value.password : password as Password,
      newPassword:
          newPassword == freezed ? _value.newPassword : newPassword as Password,
      subscription: subscription == freezed
          ? _value.subscription
          : subscription as Subscription,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      passwordHidden: passwordHidden == freezed
          ? _value.passwordHidden
          : passwordHidden as bool,
      authStatus: authStatus == freezed
          ? _value.authStatus
          : authStatus as Option<Either<AuthFailure, Unit>>,
      snackbarDismissed: snackbarDismissed == freezed
          ? _value.snackbarDismissed
          : snackbarDismissed as bool,
    ));
  }
}

/// @nodoc
class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {@required this.displayName,
      @required this.emailAddress,
      @required this.guardianEmailAddress,
      @required this.gender,
      @required this.password,
      @required this.newPassword,
      this.subscription,
      this.isLoading = false,
      this.validate = false,
      this.passwordHidden = true,
      this.authStatus = const None(),
      this.snackbarDismissed = true})
      : assert(displayName != null),
        assert(emailAddress != null),
        assert(guardianEmailAddress != null),
        assert(gender != null),
        assert(password != null),
        assert(newPassword != null),
        assert(isLoading != null),
        assert(validate != null),
        assert(passwordHidden != null),
        assert(authStatus != null),
        assert(snackbarDismissed != null);

  @override
  final DisplayName displayName;
  @override
  final EmailAddress emailAddress;
  @override
  final EmailAddress guardianEmailAddress;
  @override
  final Gender gender;
  @override
  final Password password;
  @override
  final Password newPassword;
  @override
  final Subscription subscription;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool validate;
  @JsonKey(defaultValue: true)
  @override
  final bool passwordHidden;
  @JsonKey(defaultValue: const None())
  @override
  final Option<Either<AuthFailure, Unit>> authStatus;
  @JsonKey(defaultValue: true)
  @override
  final bool snackbarDismissed;

  @override
  String toString() {
    return 'AuthState(displayName: $displayName, emailAddress: $emailAddress, guardianEmailAddress: $guardianEmailAddress, gender: $gender, password: $password, newPassword: $newPassword, subscription: $subscription, isLoading: $isLoading, validate: $validate, passwordHidden: $passwordHidden, authStatus: $authStatus, snackbarDismissed: $snackbarDismissed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthState &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.guardianEmailAddress, guardianEmailAddress) ||
                const DeepCollectionEquality().equals(
                    other.guardianEmailAddress, guardianEmailAddress)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality()
                    .equals(other.newPassword, newPassword)) &&
            (identical(other.subscription, subscription) ||
                const DeepCollectionEquality()
                    .equals(other.subscription, subscription)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.validate, validate) ||
                const DeepCollectionEquality()
                    .equals(other.validate, validate)) &&
            (identical(other.passwordHidden, passwordHidden) ||
                const DeepCollectionEquality()
                    .equals(other.passwordHidden, passwordHidden)) &&
            (identical(other.authStatus, authStatus) ||
                const DeepCollectionEquality()
                    .equals(other.authStatus, authStatus)) &&
            (identical(other.snackbarDismissed, snackbarDismissed) ||
                const DeepCollectionEquality()
                    .equals(other.snackbarDismissed, snackbarDismissed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(guardianEmailAddress) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(newPassword) ^
      const DeepCollectionEquality().hash(subscription) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(validate) ^
      const DeepCollectionEquality().hash(passwordHidden) ^
      const DeepCollectionEquality().hash(authStatus) ^
      const DeepCollectionEquality().hash(snackbarDismissed);

  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {@required DisplayName displayName,
      @required EmailAddress emailAddress,
      @required EmailAddress guardianEmailAddress,
      @required Gender gender,
      @required Password password,
      @required Password newPassword,
      Subscription subscription,
      bool isLoading,
      bool validate,
      bool passwordHidden,
      Option<Either<AuthFailure, Unit>> authStatus,
      bool snackbarDismissed}) = _$_AuthState;

  @override
  DisplayName get displayName;
  @override
  EmailAddress get emailAddress;
  @override
  EmailAddress get guardianEmailAddress;
  @override
  Gender get gender;
  @override
  Password get password;
  @override
  Password get newPassword;
  @override
  Subscription get subscription;
  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  bool get passwordHidden;
  @override
  Option<Either<AuthFailure, Unit>> get authStatus;
  @override
  bool get snackbarDismissed;
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith;
}
