import 'dart:io';
import 'dart:typed_data';

import 'package:dartz/dartz.dart' hide Task;
import 'package:firebase_storage/firebase_storage.dart' hide TaskState;
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smartlets/features/shared/domain/errors/firebase_storage_failure/firebase_storage_failure.dart';
import 'package:smartlets/features/shared/domain/repository/firebase_storage_facade.dart';
import 'package:smartlets/features/shared/shared.dart';
import 'package:smartlets/utils/utils.dart';

@LazySingleton(as: FirebaseStorageFacade)
class FirebaseStorageImpl extends FirebaseStorageFacade with FirebaseStorageImplMixin {
  final FirebaseStorage _storage;
  Reference reference;

  FirebaseStorageImpl(FirebaseStorage storage) : this._storage = storage;

  @override
  @protected
  FirebaseStorageImpl ref([String path]) {
    this.reference = this._storage?.ref(path);
    return this;
  }

  @override
  @protected
  FirebaseStorageImpl refFromUrl(String url) {
    this.reference = this._storage?.refFromURL(url);
    return this;
  }

  @override
  FirebaseStorageImpl child(String path) {
    this.reference = this._storage?.ref(reference?.fullPath)?.child(path);
    return this;
  }

  @override
  Future<Either<FirebaseStorageFailure, TaskProgress>> fileUpload(
    File file, {
    Metadata metadata,
  }) async {
    final _task = await this._storage?.ref(reference?.fullPath)?.putFile(
          file,
          SettableMetadata(
            contentType: metadata?.contentType,
            cacheControl: metadata?.cacheControl,
            contentDisposition: metadata?.contentDisposition,
            contentEncoding: metadata?.contentEncoding,
            contentLanguage: metadata?.contentLanguage,
            customMetadata: metadata?.customMetadata,
          ),
        );

    try {
      return right(TaskProgress(
        progress: (_task.bytesTransferred / _task.totalBytes) * 100,
        metadata: _setMetadata(_task.metadata),
        state: TaskState.valueOf(_task.state.toString()),
      ));
    } on FirebaseException catch (ex) {
      return handleFirebaseStorageException(ex);
    }
  }

  Stream<Either<FirebaseStorageFailure, TaskProgress>> streamFileUpload(
    File file, {
    Metadata metadata,
  }) async* {
    final _uploadTask = this._storage?.ref(reference?.fullPath)?.putFile(
          file,
          SettableMetadata(
            contentType: metadata?.contentType,
            cacheControl: metadata?.cacheControl,
            contentDisposition: metadata?.contentDisposition,
            contentEncoding: metadata?.contentEncoding,
            contentLanguage: metadata?.contentLanguage,
            customMetadata: metadata?.customMetadata,
          ),
        );

    yield* _mapper(_uploadTask);
  }

  @override
  Future<Either<FirebaseStorageFailure, TaskProgress>> rawDataUpload(
    Uint8List data, {
    Metadata metadata,
  }) async {
    final _task = await this._storage?.ref(reference?.fullPath)?.putData(
          data,
          SettableMetadata(
            contentType: metadata?.contentType,
            cacheControl: metadata?.cacheControl,
            contentDisposition: metadata?.contentDisposition,
            contentEncoding: metadata?.contentEncoding,
            contentLanguage: metadata?.contentLanguage,
            customMetadata: metadata?.customMetadata,
          ),
        );

    try {
      return right(TaskProgress(
        progress: (_task.bytesTransferred / _task.totalBytes) * 100,
        metadata: _setMetadata(_task.metadata),
        state: TaskState.valueOf(_task.state.toString()),
      ));
    } on FirebaseException catch (ex) {
      return handleFirebaseStorageException(ex);
    }
  }

  @override
  Stream<Either<FirebaseStorageFailure, TaskProgress>> streamRawDataUpload(
    Uint8List data, {
    Metadata metadata,
  }) async* {
    final _uploadTask = this._storage?.ref(reference?.fullPath)?.putData(
          data,
          SettableMetadata(
            contentType: metadata?.contentType,
            cacheControl: metadata?.cacheControl,
            contentDisposition: metadata?.contentDisposition,
            contentEncoding: metadata?.contentEncoding,
            contentLanguage: metadata?.contentLanguage,
            customMetadata: metadata?.customMetadata,
          ),
        );

    yield* _mapper(_uploadTask);
  }

  @override
  Future<Either<FirebaseStorageFailure, TaskProgress>> stringUpload(
    String data, {
    PutStringFormat format,
    Metadata metadata,
  }) async {
    final _task = await this._storage?.ref(reference?.fullPath)?.putString(
          data,
          format: format,
          metadata: SettableMetadata(
            contentType: metadata?.contentType,
            cacheControl: metadata?.cacheControl,
            contentDisposition: metadata?.contentDisposition,
            contentEncoding: metadata?.contentEncoding,
            contentLanguage: metadata?.contentLanguage,
            customMetadata: metadata?.customMetadata,
          ),
        );

    try {
      return right(TaskProgress(
        progress: (_task.bytesTransferred / _task.totalBytes) * 100,
        metadata: _setMetadata(_task.metadata),
        state: TaskState.valueOf(_task.state.toString()),
      ));
    } on FirebaseException catch (ex) {
      return handleFirebaseStorageException(ex);
    }
  }

  @override
  Stream<Either<FirebaseStorageFailure, TaskProgress>> streamStringUpload(
    String data, {
    PutStringFormat format,
    Metadata metadata,
  }) async* {
    final _uploadTask = this._storage?.ref(reference?.fullPath)?.putString(
          data,
          format: format,
          metadata: SettableMetadata(
            contentType: metadata?.contentType,
            cacheControl: metadata?.cacheControl,
            contentDisposition: metadata?.contentDisposition,
            contentEncoding: metadata?.contentEncoding,
            contentLanguage: metadata?.contentLanguage,
            customMetadata: metadata?.customMetadata,
          ),
        );

    yield* _mapper(_uploadTask);
  }

  @override
  Future<Either<FirebaseStorageFailure, TaskProgress>> download(File file) async {
    final _task = await this._storage?.ref(reference?.fullPath)?.writeToFile(file);

    try {
      return right(TaskProgress(
        progress: (_task.bytesTransferred / _task.totalBytes) * 100,
        metadata: _setMetadata(_task.metadata),
        state: TaskState.valueOf(_task.state.toString()),
      ));
    } on FirebaseException catch (ex) {
      return handleFirebaseStorageException(ex);
    }
  }

  @override
  Stream<Either<FirebaseStorageFailure, TaskProgress>> streamFileDownload(File file) async* {
    final _downloadTask = this._storage?.ref(reference?.fullPath)?.writeToFile(file);

    yield* _mapper(_downloadTask);
  }

  @override
  Future<Either<FirebaseStorageFailure, Uint8List>> fetchRawData([int maxSize]) async {
    try {
      return right(await this._storage?.ref(reference?.fullPath)?.getData(maxSize));
    } on FirebaseException catch (ex) {
      return handleFirebaseStorageException(ex);
    }
  }

  @override
  Future<Either<FirebaseStorageFailure, String>> get getDownloadURL async {
    try {
      final _result = await this._storage?.ref(reference?.fullPath)?.getDownloadURL();

      return right(_result);
    } on FirebaseException catch (ex) {
      return handleFirebaseStorageException(ex);
    }
  }

  @override
  Future<Either<FirebaseStorageFailure, Unit>> delete() async {
    try {
      await this._storage?.ref(reference?.fullPath)?.delete();

      return right(unit);
    } on FirebaseException catch (ex) {
      return handleFirebaseStorageException(ex);
    }
  }

  @override
  Future<Either<FirebaseStorageFailure, Metadata>> get getMetadata async {
    final _fullMetadata = await this._storage?.ref(reference?.fullPath)?.getMetadata();

    try {
      return right(_setMetadata(_fullMetadata));
    } on FirebaseException catch (ex) {
      return handleFirebaseStorageException(ex);
    }
  }

  @override
  Future<Either<FirebaseStorageFailure, Metadata>> updateMetadata(Metadata metadata) async {
    final _fullMetadata = await this._storage?.ref(reference?.fullPath)?.updateMetadata(
          SettableMetadata(
            contentType: metadata?.contentType,
            cacheControl: metadata?.cacheControl,
            contentDisposition: metadata?.contentDisposition,
            contentEncoding: metadata?.contentEncoding,
            contentLanguage: metadata?.contentLanguage,
            customMetadata: metadata?.customMetadata,
          ),
        );

    try {
      return right(_setMetadata(_fullMetadata));
    } on FirebaseException catch (ex) {
      return handleFirebaseStorageException(ex);
    }
  }

  Metadata _setMetadata(FullMetadata fullMetadata) {
    return Metadata(
      fullPath: fullMetadata?.fullPath,
      name: fullMetadata?.name,
      size: fullMetadata?.size,
      bucket: fullMetadata?.bucket,
      contentType: fullMetadata?.contentType,
      cacheControl: fullMetadata?.cacheControl,
      contentEncoding: fullMetadata?.contentEncoding,
      contentDisposition: fullMetadata?.contentDisposition,
      contentLanguage: fullMetadata?.contentLanguage,
      customMetadata: fullMetadata?.customMetadata,
      generation: fullMetadata?.generation,
      md5Hash: fullMetadata?.md5Hash,
      createdAt: fullMetadata?.timeCreated,
      updatedAt: fullMetadata?.updated,
    );
  }

  Stream<Either<FirebaseStorageFailure, TaskProgress>> _mapper(Task task) async* {
    yield* task.snapshotEvents
        .map<Either<FirebaseStorageFailure, TaskProgress>>((snapshot) => right(TaskProgress(
              state: TaskState.valueOf("${snapshot.state.toString().erase(["TaskState."])}"),
              isRunning: TaskState.valueOf("${snapshot.state.toString().erase(["TaskState."])}") == TaskState.running,
              progress: snapshot.bytesTransferred / snapshot.totalBytes,
              metadata: _setMetadata(snapshot.metadata),
            )))
        .onErrorReturnWith(handleFirebaseStorageException);
  }
}
