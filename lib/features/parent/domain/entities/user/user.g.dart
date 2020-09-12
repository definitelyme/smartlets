// GENERATED CODE - DO NOT MODIFY BY HAND

part of user;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<User> _$userSerializer = new _$UserSerializer();

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable<Object> serialize(Serializers serializers, User object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(UniqueId)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(DateTime)),
      'lastSeenAt',
      serializers.serialize(object.lastSeenAt,
          specifiedType: const FullType(DateTime)),
    ];
    if (object.displayName != null) {
      result
        ..add('displayName')
        ..add(serializers.serialize(object.displayName,
            specifiedType: const FullType(String)));
    }
    if (object.isEmailVerified != null) {
      result
        ..add('isEmailVerified')
        ..add(serializers.serialize(object.isEmailVerified,
            specifiedType: const FullType(bool)));
    }
    if (object.phone != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(object.phone,
            specifiedType: const FullType(String)));
    }
    if (object.photoURL != null) {
      result
        ..add('photoURL')
        ..add(serializers.serialize(object.photoURL,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(UniqueId)) as UniqueId;
          break;
        case 'displayName':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isEmailVerified':
          result.isEmailVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photoURL':
          result.photoURL = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'lastSeenAt':
          result.lastSeenAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$User extends User {
  @override
  final UniqueId id;
  @override
  final String displayName;
  @override
  final String email;
  @override
  final bool isEmailVerified;
  @override
  final String phone;
  @override
  final String photoURL;
  @override
  final DateTime createdAt;
  @override
  final DateTime lastSeenAt;

  factory _$User([void Function(UserBuilder) updates]) =>
      (new UserBuilder()..update(updates)).build();

  _$User._(
      {this.id,
      this.displayName,
      this.email,
      this.isEmailVerified,
      this.phone,
      this.photoURL,
      this.createdAt,
      this.lastSeenAt})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('User', 'id');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('User', 'email');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('User', 'createdAt');
    }
    if (lastSeenAt == null) {
      throw new BuiltValueNullFieldError('User', 'lastSeenAt');
    }
  }

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        displayName == other.displayName &&
        email == other.email &&
        isEmailVerified == other.isEmailVerified &&
        phone == other.phone &&
        photoURL == other.photoURL &&
        createdAt == other.createdAt &&
        lastSeenAt == other.lastSeenAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), displayName.hashCode),
                            email.hashCode),
                        isEmailVerified.hashCode),
                    phone.hashCode),
                photoURL.hashCode),
            createdAt.hashCode),
        lastSeenAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')
          ..add('id', id)
          ..add('displayName', displayName)
          ..add('email', email)
          ..add('isEmailVerified', isEmailVerified)
          ..add('phone', phone)
          ..add('photoURL', photoURL)
          ..add('createdAt', createdAt)
          ..add('lastSeenAt', lastSeenAt))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User _$v;

  UniqueId _id;
  UniqueId get id => _$this._id;
  set id(UniqueId id) => _$this._id = id;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  bool _isEmailVerified;
  bool get isEmailVerified => _$this._isEmailVerified;
  set isEmailVerified(bool isEmailVerified) =>
      _$this._isEmailVerified = isEmailVerified;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  String _photoURL;
  String get photoURL => _$this._photoURL;
  set photoURL(String photoURL) => _$this._photoURL = photoURL;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _lastSeenAt;
  DateTime get lastSeenAt => _$this._lastSeenAt;
  set lastSeenAt(DateTime lastSeenAt) => _$this._lastSeenAt = lastSeenAt;

  UserBuilder() {
    User._initializeBuilder(this);
  }

  UserBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _displayName = _$v.displayName;
      _email = _$v.email;
      _isEmailVerified = _$v.isEmailVerified;
      _phone = _$v.phone;
      _photoURL = _$v.photoURL;
      _createdAt = _$v.createdAt;
      _lastSeenAt = _$v.lastSeenAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    final _$result = _$v ??
        new _$User._(
            id: id,
            displayName: displayName,
            email: email,
            isEmailVerified: isEmailVerified,
            phone: phone,
            photoURL: photoURL,
            createdAt: createdAt,
            lastSeenAt: lastSeenAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
