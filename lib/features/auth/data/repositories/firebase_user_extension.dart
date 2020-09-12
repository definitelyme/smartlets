import 'package:firebase_auth/firebase_auth.dart' as _;
import 'package:smartlets/features/parent/domain/entities/entities.dart';

extension FirebaseUserX on _.User {
  User domain() {
    return User(
      (b) => b
        ..id = UniqueId.fromExternal(uid)
        ..displayName =
            displayName ?? providerData.firstWhere((info) => info?.displayName != null || info?.displayName != "", orElse: null).displayName
        ..email = email ?? providerData.firstWhere((info) => info?.email != null || info?.email != "", orElse: null).email
        ..isEmailVerified = emailVerified
        ..phone =
            phoneNumber ?? providerData.firstWhere((info) => info?.phoneNumber != null || info?.phoneNumber != "", orElse: null).phoneNumber
        ..photoURL = photoURL ?? providerData.firstWhere((info) => info?.photoURL != null || info?.photoURL != "", orElse: null).photoURL
        ..createdAt = metadata?.creationTime
        ..lastSeenAt = metadata?.lastSignInTime,
    );
  }
}
