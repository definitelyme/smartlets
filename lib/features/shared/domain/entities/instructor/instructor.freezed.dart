// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'instructor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$InstructorTearOff {
  const _$InstructorTearOff();

// ignore: unused_element
  _Instructor call(
      {@required UniqueId id,
      @required @nullable DisplayName displayName,
      @required EmailAddress email,
      @required Biography bio,
      @required Specialty specialty,
      @required bool isEmailVerified,
      @required @nullable String phone,
      @required @nullable String photoURL,
      @required DateTime createdAt,
      @required DateTime lastSeenAt}) {
    return _Instructor(
      id: id,
      displayName: displayName,
      email: email,
      bio: bio,
      specialty: specialty,
      isEmailVerified: isEmailVerified,
      phone: phone,
      photoURL: photoURL,
      createdAt: createdAt,
      lastSeenAt: lastSeenAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Instructor = _$InstructorTearOff();

/// @nodoc
mixin _$Instructor {
  UniqueId get id;
  @nullable
  DisplayName get displayName;
  EmailAddress get email;
  Biography get bio;
  Specialty get specialty;
  bool get isEmailVerified;
  @nullable
  String get phone;
  @nullable
  String get photoURL;
  DateTime get createdAt;
  DateTime get lastSeenAt;

  $InstructorCopyWith<Instructor> get copyWith;
}

/// @nodoc
abstract class $InstructorCopyWith<$Res> {
  factory $InstructorCopyWith(
          Instructor value, $Res Function(Instructor) then) =
      _$InstructorCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      @nullable DisplayName displayName,
      EmailAddress email,
      Biography bio,
      Specialty specialty,
      bool isEmailVerified,
      @nullable String phone,
      @nullable String photoURL,
      DateTime createdAt,
      DateTime lastSeenAt});
}

/// @nodoc
class _$InstructorCopyWithImpl<$Res> implements $InstructorCopyWith<$Res> {
  _$InstructorCopyWithImpl(this._value, this._then);

  final Instructor _value;
  // ignore: unused_field
  final $Res Function(Instructor) _then;

  @override
  $Res call({
    Object id = freezed,
    Object displayName = freezed,
    Object email = freezed,
    Object bio = freezed,
    Object specialty = freezed,
    Object isEmailVerified = freezed,
    Object phone = freezed,
    Object photoURL = freezed,
    Object createdAt = freezed,
    Object lastSeenAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName as DisplayName,
      email: email == freezed ? _value.email : email as EmailAddress,
      bio: bio == freezed ? _value.bio : bio as Biography,
      specialty:
          specialty == freezed ? _value.specialty : specialty as Specialty,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified as bool,
      phone: phone == freezed ? _value.phone : phone as String,
      photoURL: photoURL == freezed ? _value.photoURL : photoURL as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      lastSeenAt:
          lastSeenAt == freezed ? _value.lastSeenAt : lastSeenAt as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$InstructorCopyWith<$Res> implements $InstructorCopyWith<$Res> {
  factory _$InstructorCopyWith(
          _Instructor value, $Res Function(_Instructor) then) =
      __$InstructorCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      @nullable DisplayName displayName,
      EmailAddress email,
      Biography bio,
      Specialty specialty,
      bool isEmailVerified,
      @nullable String phone,
      @nullable String photoURL,
      DateTime createdAt,
      DateTime lastSeenAt});
}

/// @nodoc
class __$InstructorCopyWithImpl<$Res> extends _$InstructorCopyWithImpl<$Res>
    implements _$InstructorCopyWith<$Res> {
  __$InstructorCopyWithImpl(
      _Instructor _value, $Res Function(_Instructor) _then)
      : super(_value, (v) => _then(v as _Instructor));

  @override
  _Instructor get _value => super._value as _Instructor;

  @override
  $Res call({
    Object id = freezed,
    Object displayName = freezed,
    Object email = freezed,
    Object bio = freezed,
    Object specialty = freezed,
    Object isEmailVerified = freezed,
    Object phone = freezed,
    Object photoURL = freezed,
    Object createdAt = freezed,
    Object lastSeenAt = freezed,
  }) {
    return _then(_Instructor(
      id: id == freezed ? _value.id : id as UniqueId,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName as DisplayName,
      email: email == freezed ? _value.email : email as EmailAddress,
      bio: bio == freezed ? _value.bio : bio as Biography,
      specialty:
          specialty == freezed ? _value.specialty : specialty as Specialty,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified as bool,
      phone: phone == freezed ? _value.phone : phone as String,
      photoURL: photoURL == freezed ? _value.photoURL : photoURL as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      lastSeenAt:
          lastSeenAt == freezed ? _value.lastSeenAt : lastSeenAt as DateTime,
    ));
  }
}

/// @nodoc
class _$_Instructor extends _Instructor {
  const _$_Instructor(
      {@required this.id,
      @required @nullable this.displayName,
      @required this.email,
      @required this.bio,
      @required this.specialty,
      @required this.isEmailVerified,
      @required @nullable this.phone,
      @required @nullable this.photoURL,
      @required this.createdAt,
      @required this.lastSeenAt})
      : assert(id != null),
        assert(email != null),
        assert(bio != null),
        assert(specialty != null),
        assert(isEmailVerified != null),
        assert(createdAt != null),
        assert(lastSeenAt != null),
        super._();

  @override
  final UniqueId id;
  @override
  @nullable
  final DisplayName displayName;
  @override
  final EmailAddress email;
  @override
  final Biography bio;
  @override
  final Specialty specialty;
  @override
  final bool isEmailVerified;
  @override
  @nullable
  final String phone;
  @override
  @nullable
  final String photoURL;
  @override
  final DateTime createdAt;
  @override
  final DateTime lastSeenAt;

  @override
  String toString() {
    return 'Instructor(id: $id, displayName: $displayName, email: $email, bio: $bio, specialty: $specialty, isEmailVerified: $isEmailVerified, phone: $phone, photoURL: $photoURL, createdAt: $createdAt, lastSeenAt: $lastSeenAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Instructor &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.specialty, specialty) ||
                const DeepCollectionEquality()
                    .equals(other.specialty, specialty)) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailVerified, isEmailVerified)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.photoURL, photoURL) ||
                const DeepCollectionEquality()
                    .equals(other.photoURL, photoURL)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.lastSeenAt, lastSeenAt) ||
                const DeepCollectionEquality()
                    .equals(other.lastSeenAt, lastSeenAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(specialty) ^
      const DeepCollectionEquality().hash(isEmailVerified) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(photoURL) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(lastSeenAt);

  @override
  _$InstructorCopyWith<_Instructor> get copyWith =>
      __$InstructorCopyWithImpl<_Instructor>(this, _$identity);
}

abstract class _Instructor extends Instructor {
  const _Instructor._() : super._();
  const factory _Instructor(
      {@required UniqueId id,
      @required @nullable DisplayName displayName,
      @required EmailAddress email,
      @required Biography bio,
      @required Specialty specialty,
      @required bool isEmailVerified,
      @required @nullable String phone,
      @required @nullable String photoURL,
      @required DateTime createdAt,
      @required DateTime lastSeenAt}) = _$_Instructor;

  @override
  UniqueId get id;
  @override
  @nullable
  DisplayName get displayName;
  @override
  EmailAddress get email;
  @override
  Biography get bio;
  @override
  Specialty get specialty;
  @override
  bool get isEmailVerified;
  @override
  @nullable
  String get phone;
  @override
  @nullable
  String get photoURL;
  @override
  DateTime get createdAt;
  @override
  DateTime get lastSeenAt;
  @override
  _$InstructorCopyWith<_Instructor> get copyWith;
}
