// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StudentTearOff {
  const _$StudentTearOff();

// ignore: unused_element
  _Student call(
      {@required UniqueId id,
      @required @nullable DisplayName displayName,
      @required EmailAddress email,
      @required @nullable EmailAddress guardianEmail,
      @required Gender gender,
      KtList<UniqueId> courseIds = const KtList.empty(),
      KtList<UniqueId> projectIds = const KtList.empty(),
      KtList<UniqueId> awardIds = const KtList.empty(),
      @required bool isEmailVerified,
      @required @nullable String phone,
      @required @nullable String guardianPhone,
      @required @nullable String photoURL,
      @required DateTime createdAt,
      @required DateTime lastSeenAt}) {
    return _Student(
      id: id,
      displayName: displayName,
      email: email,
      guardianEmail: guardianEmail,
      gender: gender,
      courseIds: courseIds,
      projectIds: projectIds,
      awardIds: awardIds,
      isEmailVerified: isEmailVerified,
      phone: phone,
      guardianPhone: guardianPhone,
      photoURL: photoURL,
      createdAt: createdAt,
      lastSeenAt: lastSeenAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Student = _$StudentTearOff();

/// @nodoc
mixin _$Student {
  UniqueId get id;
  @nullable
  DisplayName get displayName;
  EmailAddress get email;
  @nullable
  EmailAddress get guardianEmail;
  Gender get gender;
  KtList<UniqueId> get courseIds;
  KtList<UniqueId> get projectIds;
  KtList<UniqueId> get awardIds;
  bool get isEmailVerified;
  @nullable
  String get phone;
  @nullable
  String get guardianPhone;
  @nullable
  String get photoURL;
  DateTime get createdAt;
  DateTime get lastSeenAt;

  $StudentCopyWith<Student> get copyWith;
}

/// @nodoc
abstract class $StudentCopyWith<$Res> {
  factory $StudentCopyWith(Student value, $Res Function(Student) then) =
      _$StudentCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      @nullable DisplayName displayName,
      EmailAddress email,
      @nullable EmailAddress guardianEmail,
      Gender gender,
      KtList<UniqueId> courseIds,
      KtList<UniqueId> projectIds,
      KtList<UniqueId> awardIds,
      bool isEmailVerified,
      @nullable String phone,
      @nullable String guardianPhone,
      @nullable String photoURL,
      DateTime createdAt,
      DateTime lastSeenAt});
}

/// @nodoc
class _$StudentCopyWithImpl<$Res> implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._value, this._then);

  final Student _value;
  // ignore: unused_field
  final $Res Function(Student) _then;

  @override
  $Res call({
    Object id = freezed,
    Object displayName = freezed,
    Object email = freezed,
    Object guardianEmail = freezed,
    Object gender = freezed,
    Object courseIds = freezed,
    Object projectIds = freezed,
    Object awardIds = freezed,
    Object isEmailVerified = freezed,
    Object phone = freezed,
    Object guardianPhone = freezed,
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
      guardianEmail: guardianEmail == freezed
          ? _value.guardianEmail
          : guardianEmail as EmailAddress,
      gender: gender == freezed ? _value.gender : gender as Gender,
      courseIds: courseIds == freezed
          ? _value.courseIds
          : courseIds as KtList<UniqueId>,
      projectIds: projectIds == freezed
          ? _value.projectIds
          : projectIds as KtList<UniqueId>,
      awardIds:
          awardIds == freezed ? _value.awardIds : awardIds as KtList<UniqueId>,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified as bool,
      phone: phone == freezed ? _value.phone : phone as String,
      guardianPhone: guardianPhone == freezed
          ? _value.guardianPhone
          : guardianPhone as String,
      photoURL: photoURL == freezed ? _value.photoURL : photoURL as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      lastSeenAt:
          lastSeenAt == freezed ? _value.lastSeenAt : lastSeenAt as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$StudentCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$StudentCopyWith(_Student value, $Res Function(_Student) then) =
      __$StudentCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      @nullable DisplayName displayName,
      EmailAddress email,
      @nullable EmailAddress guardianEmail,
      Gender gender,
      KtList<UniqueId> courseIds,
      KtList<UniqueId> projectIds,
      KtList<UniqueId> awardIds,
      bool isEmailVerified,
      @nullable String phone,
      @nullable String guardianPhone,
      @nullable String photoURL,
      DateTime createdAt,
      DateTime lastSeenAt});
}

/// @nodoc
class __$StudentCopyWithImpl<$Res> extends _$StudentCopyWithImpl<$Res>
    implements _$StudentCopyWith<$Res> {
  __$StudentCopyWithImpl(_Student _value, $Res Function(_Student) _then)
      : super(_value, (v) => _then(v as _Student));

  @override
  _Student get _value => super._value as _Student;

  @override
  $Res call({
    Object id = freezed,
    Object displayName = freezed,
    Object email = freezed,
    Object guardianEmail = freezed,
    Object gender = freezed,
    Object courseIds = freezed,
    Object projectIds = freezed,
    Object awardIds = freezed,
    Object isEmailVerified = freezed,
    Object phone = freezed,
    Object guardianPhone = freezed,
    Object photoURL = freezed,
    Object createdAt = freezed,
    Object lastSeenAt = freezed,
  }) {
    return _then(_Student(
      id: id == freezed ? _value.id : id as UniqueId,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName as DisplayName,
      email: email == freezed ? _value.email : email as EmailAddress,
      guardianEmail: guardianEmail == freezed
          ? _value.guardianEmail
          : guardianEmail as EmailAddress,
      gender: gender == freezed ? _value.gender : gender as Gender,
      courseIds: courseIds == freezed
          ? _value.courseIds
          : courseIds as KtList<UniqueId>,
      projectIds: projectIds == freezed
          ? _value.projectIds
          : projectIds as KtList<UniqueId>,
      awardIds:
          awardIds == freezed ? _value.awardIds : awardIds as KtList<UniqueId>,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified as bool,
      phone: phone == freezed ? _value.phone : phone as String,
      guardianPhone: guardianPhone == freezed
          ? _value.guardianPhone
          : guardianPhone as String,
      photoURL: photoURL == freezed ? _value.photoURL : photoURL as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      lastSeenAt:
          lastSeenAt == freezed ? _value.lastSeenAt : lastSeenAt as DateTime,
    ));
  }
}

/// @nodoc
class _$_Student extends _Student {
  const _$_Student(
      {@required this.id,
      @required @nullable this.displayName,
      @required this.email,
      @required @nullable this.guardianEmail,
      @required this.gender,
      this.courseIds = const KtList.empty(),
      this.projectIds = const KtList.empty(),
      this.awardIds = const KtList.empty(),
      @required this.isEmailVerified,
      @required @nullable this.phone,
      @required @nullable this.guardianPhone,
      @required @nullable this.photoURL,
      @required this.createdAt,
      @required this.lastSeenAt})
      : assert(id != null),
        assert(email != null),
        assert(gender != null),
        assert(courseIds != null),
        assert(projectIds != null),
        assert(awardIds != null),
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
  @nullable
  final EmailAddress guardianEmail;
  @override
  final Gender gender;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<UniqueId> courseIds;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<UniqueId> projectIds;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<UniqueId> awardIds;
  @override
  final bool isEmailVerified;
  @override
  @nullable
  final String phone;
  @override
  @nullable
  final String guardianPhone;
  @override
  @nullable
  final String photoURL;
  @override
  final DateTime createdAt;
  @override
  final DateTime lastSeenAt;

  @override
  String toString() {
    return 'Student(id: $id, displayName: $displayName, email: $email, guardianEmail: $guardianEmail, gender: $gender, courseIds: $courseIds, projectIds: $projectIds, awardIds: $awardIds, isEmailVerified: $isEmailVerified, phone: $phone, guardianPhone: $guardianPhone, photoURL: $photoURL, createdAt: $createdAt, lastSeenAt: $lastSeenAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Student &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.guardianEmail, guardianEmail) ||
                const DeepCollectionEquality()
                    .equals(other.guardianEmail, guardianEmail)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.courseIds, courseIds) ||
                const DeepCollectionEquality()
                    .equals(other.courseIds, courseIds)) &&
            (identical(other.projectIds, projectIds) ||
                const DeepCollectionEquality()
                    .equals(other.projectIds, projectIds)) &&
            (identical(other.awardIds, awardIds) ||
                const DeepCollectionEquality()
                    .equals(other.awardIds, awardIds)) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailVerified, isEmailVerified)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.guardianPhone, guardianPhone) ||
                const DeepCollectionEquality()
                    .equals(other.guardianPhone, guardianPhone)) &&
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
      const DeepCollectionEquality().hash(guardianEmail) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(courseIds) ^
      const DeepCollectionEquality().hash(projectIds) ^
      const DeepCollectionEquality().hash(awardIds) ^
      const DeepCollectionEquality().hash(isEmailVerified) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(guardianPhone) ^
      const DeepCollectionEquality().hash(photoURL) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(lastSeenAt);

  @override
  _$StudentCopyWith<_Student> get copyWith =>
      __$StudentCopyWithImpl<_Student>(this, _$identity);
}

abstract class _Student extends Student {
  const _Student._() : super._();
  const factory _Student(
      {@required UniqueId id,
      @required @nullable DisplayName displayName,
      @required EmailAddress email,
      @required @nullable EmailAddress guardianEmail,
      @required Gender gender,
      KtList<UniqueId> courseIds,
      KtList<UniqueId> projectIds,
      KtList<UniqueId> awardIds,
      @required bool isEmailVerified,
      @required @nullable String phone,
      @required @nullable String guardianPhone,
      @required @nullable String photoURL,
      @required DateTime createdAt,
      @required DateTime lastSeenAt}) = _$_Student;

  @override
  UniqueId get id;
  @override
  @nullable
  DisplayName get displayName;
  @override
  EmailAddress get email;
  @override
  @nullable
  EmailAddress get guardianEmail;
  @override
  Gender get gender;
  @override
  KtList<UniqueId> get courseIds;
  @override
  KtList<UniqueId> get projectIds;
  @override
  KtList<UniqueId> get awardIds;
  @override
  bool get isEmailVerified;
  @override
  @nullable
  String get phone;
  @override
  @nullable
  String get guardianPhone;
  @override
  @nullable
  String get photoURL;
  @override
  DateTime get createdAt;
  @override
  DateTime get lastSeenAt;
  @override
  _$StudentCopyWith<_Student> get copyWith;
}
