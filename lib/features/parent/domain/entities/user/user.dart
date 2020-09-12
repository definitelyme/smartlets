library user;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smartlets/features/parent/domain/entities/entities.dart';
import 'package:smartlets/manager/serializer/serializer.dart';
import 'package:smartlets/utils/utils.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
  UniqueId get id;
  @nullable
  String get displayName;
  String get email;
  @nullable
  bool get isEmailVerified;
  @nullable
  String get phone;
  @nullable
  String get photoURL;
  DateTime get createdAt;
  DateTime get lastSeenAt;

  User._();

  static void _initializeBuilder(UserBuilder builder) => builder
    ..id = UniqueId()
    ..displayName = "Anonymous"
    ..email = "name@email.com"
    ..isEmailVerified = false
    ..phone = "+2348100000000"
    ..photoURL = ""
    ..createdAt = Helpers.I.today
    ..lastSeenAt = Helpers.I.today;

  factory User([updates(UserBuilder b)]) = _$User;

  String toJson() => json.encode(serializers.serializeWith(User.serializer, this));

  static User fromJson(String jsonString) => serializers.deserializeWith(User.serializer, json.decode(jsonString));

  static Serializer<User> get serializer => _$userSerializer;
}
