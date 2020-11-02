library user;

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';
import 'package:smartlets/features/parent/domain/entities/entities.dart';
import 'package:smartlets/utils/utils.dart';

part 'user.freezed.dart';

@freezed
@immutable
abstract class User implements _$User {
  // @protected
  const User._();

  const factory User({
    @required UniqueId id,
    @required @nullable String displayName,
    @required String email,
    @required @nullable bool isEmailVerified,
    @required @nullable String phone,
    @required @nullable String photoURL,
    @required DateTime createdAt,
    @required DateTime lastSeenAt,
  }) = _User;

  factory User.firebaseAuth({
    @required UniqueId id,
    @required @nullable String displayName,
    @required String email,
    @required @nullable bool isEmailVerified,
    @required @nullable String phone,
    @required @nullable String photoURL,
    @required DateTime createdAt,
    @required DateTime lastSeenAt,
  }) =>
      User(
        id: id,
        displayName: displayName,
        email: email,
        isEmailVerified: isEmailVerified,
        phone: phone,
        photoURL: photoURL,
        createdAt: createdAt,
        lastSeenAt: lastSeenAt,
      );

  factory User.guest() => User(
        id: UniqueId(),
        displayName: "Anonymous",
        email: "name@email.com",
        isEmailVerified: false,
        phone: "+2348100000000",
        photoURL: "",
        createdAt: Helpers.I.today,
        lastSeenAt: Helpers.I.today,
      );

  Student get sampleStudent => Student(
        id: id,
        displayName: DisplayName(displayName),
        email: EmailAddress(email),
        isEmailVerified: isEmailVerified,
        phone: phone,
        photoURL: photoURL,
        createdAt: createdAt,
        lastSeenAt: lastSeenAt,
        gender: Gender(GenderType.Female),
        guardianPhone: null,
        guardianEmail: null,
      );

  Instructor get sampleInstructor => Instructor(
        id: id,
        displayName: DisplayName(displayName),
        email: EmailAddress(email),
        isEmailVerified: isEmailVerified,
        phone: phone,
        photoURL: photoURL,
        createdAt: createdAt,
        lastSeenAt: lastSeenAt,
        bio: Biography(input: "Hey! Here's my biography"),
        specialty: Specialty(input: "Web design"),
      );
}
