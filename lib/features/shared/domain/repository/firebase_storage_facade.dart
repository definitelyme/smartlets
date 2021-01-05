import 'dart:io';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:smartlets/features/shared/shared.dart';
import 'package:smartlets/utils/utils.dart';

abstract class FirebaseStorageFacade implements StorageFacade {
  // This Facade is particular to Firebase
  // It implements all methods from the base class 'StorageFacade' and is subclassed by 'FirebaseStorageImpl'
  FirebaseStorageImpl ref([String path]);

  FirebaseStorageImpl refFromUrl(String url);
}

mixin FirebaseStorageImplMixin on FirebaseStorageFacade {
  // This Mixin "extends" 'FirebaseStorageFacade' and is subclassed by 'FirebaseStorageImpl'
  FirebaseStorageImpl child(String path);

  Future<Either<FirebaseStorageFailure, Uint8List>> fetchRawData([int maxSize]);

  Future<Either<FirebaseStorageFailure, String>> get getDownloadURL;

  Future<Either<FirebaseStorageFailure, TaskProgress>> download(File file);

  Stream<Either<FirebaseStorageFailure, TaskProgress>> streamFileDownload(File file);

  Future<Either<FirebaseStorageFailure, TaskProgress>> fileUpload(File file, {Metadata metadata});

  Stream<Either<FirebaseStorageFailure, TaskProgress>> streamFileUpload(File file, {Metadata metadata});

  Future<Either<FirebaseStorageFailure, TaskProgress>> rawDataUpload(Uint8List data, {Metadata metadata});

  Stream<Either<FirebaseStorageFailure, TaskProgress>> streamRawDataUpload(Uint8List data, {Metadata metadata});

  Future<Either<FirebaseStorageFailure, TaskProgress>> stringUpload(
    String data, {
    PutStringFormat format,
    Metadata metadata,
  });

  Stream<Either<FirebaseStorageFailure, TaskProgress>> streamStringUpload(
    String data, {
    PutStringFormat format,
    Metadata metadata,
  });

  Future<Either<FirebaseStorageFailure, Metadata>> updateMetadata(Metadata metadata);

  Future<Either<FirebaseStorageFailure, Metadata>> get getMetadata;

  Future<Either<FirebaseStorageFailure, Unit>> delete();

  @protected
  Either<FirebaseStorageFailure, R> handleFirebaseStorageException<R>(e) {
    if (e is FirebaseException) {
      String error = e.code;
      String message = e.message;

      if (env.flavor == BuildFlavor.dev) log.e(message, error);

      switch (error) {
        case ABORTED:
          return left(FirebaseStorageFailure.aborted(message));
        case CANCELLED:
          return left(FirebaseStorageFailure.cancelled(message));
        case QUOTA_EXCEEDED:
        case RESOURCE_EXHAUSTED:
          return left(FirebaseStorageFailure.quotaExceeded(message));
        case NOT_FOUND:
        case OBJECT_NOT_FOUND:
        case PROJECT_NOT_FOUND:
        case BUCKET_NOT_FOUND:
          return left(FirebaseStorageFailure.notFound(message));
        case INVALID_CHECKSUM:
          return left(FirebaseStorageFailure.invalidCheckSum(message));
        case NOT_AUTHENTICATED:
        case UNAUTHENTICATED:
          return left(FirebaseStorageFailure.notAuthenticated(message));
        case PERMISSION_DENIED:
          return left(FirebaseStorageFailure.permissionDenied(message));
        case NOT_AUTHORIZED:
          return left(FirebaseStorageFailure.notAuthorized(message));
        case RETRY_LIMIT_EXCEEDED:
          return left(FirebaseStorageFailure.retryLimitExceeded(message));
        case UNIMPLEMENTED:
        case UNAVAILABLE:
          return left(FirebaseStorageFailure.unAvailable(message));
        case RESOURCE_EXHAUSTED:
        case FAILED_PRECONDITION:
        case INTERNAL:
        case UNKNOWN:
        case ERROR_UNKNOWN:
        default:
          return left(FirebaseStorageFailure.unknown(message: message, title: "Unknown Failure", errorCode: error));
      }
    }
    return left(FirebaseStorageFailure.unknown(message: "${e.toString()}"));
  }
}
