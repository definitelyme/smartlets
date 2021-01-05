library firebase_storage_failure;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_storage_failure.freezed.dart';

@freezed
@immutable
abstract class FirebaseStorageFailure
    implements _$FirebaseStorageFailure {
  @protected
  const FirebaseStorageFailure._();

  const factory FirebaseStorageFailure(String message, {
    String title,
    String errorCode,
  }) = _FirebaseStorageFailure;

  factory FirebaseStorageFailure.bucketNotFound(String message) => FirebaseStorageFailure(message);

  factory FirebaseStorageFailure.tooManyRequests(String message) => FirebaseStorageFailure(message);

  factory FirebaseStorageFailure.aborted(String message) => FirebaseStorageFailure(message);

  factory FirebaseStorageFailure.alreadyExist(String message) => FirebaseStorageFailure(message);

  factory FirebaseStorageFailure.internal(String message) => FirebaseStorageFailure(message);

  factory FirebaseStorageFailure.notFound(String message) => FirebaseStorageFailure(message);

  factory FirebaseStorageFailure.resourceExhausted(String message) => FirebaseStorageFailure(message);

  factory FirebaseStorageFailure.invalidCheckSum(String message) => FirebaseStorageFailure(message);

  factory FirebaseStorageFailure.notAuthenticated(String message) => FirebaseStorageFailure(message);

  factory FirebaseStorageFailure.notAuthorized(String message) => FirebaseStorageFailure(message);

  factory FirebaseStorageFailure.permissionDenied(String message) => FirebaseStorageFailure(message);

  factory FirebaseStorageFailure.objectNotFound(String message) => FirebaseStorageFailure(message);

  factory FirebaseStorageFailure.projectNotFound(String message) => FirebaseStorageFailure(message);

  factory FirebaseStorageFailure.quotaExceeded(String message) => FirebaseStorageFailure(message);

  factory FirebaseStorageFailure.retryLimitExceeded(String message) => FirebaseStorageFailure(message);

  factory FirebaseStorageFailure.cancelled(String message) => FirebaseStorageFailure(message);

  factory FirebaseStorageFailure.unAvailable(String message) => FirebaseStorageFailure(message);

  const factory FirebaseStorageFailure.unknown({
    String title,
    @Default("A fatal failure occurred!") String message,
    String errorCode,
  }) = _UnknownStorageFailure;
}
