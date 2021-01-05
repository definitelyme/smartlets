import 'dart:async';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:retry/retry.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/parent/data/export.dart';
import 'package:smartlets/utils/utils.dart';

@LazySingleton()
class GuardianAuthImpl with FirestoreAuthMixin<Guardian> {
  final FirebaseFirestore _firestore;
  final DataConnectionChecker _connectionChecker;

  // Temporary document snapshot (Used to check if fieldIsNull)
  GetOptions _options = GetOptions(source: Source.serverAndCache);
  DocumentSnapshot _temp;

  GuardianAuthImpl(this._firestore, this._connectionChecker);

  Future<bool> get checkHasInternet async {
    var conn = await _connectionChecker.hasConnection;
    if (conn)
      _options = GetOptions(source: Source.server);
    else
      _options = GetOptions(source: Source.cache);
    return conn;
  }

  @override
  Future<Guardian> get single async {
    await checkHasInternet;
    DocumentSnapshot doc = await _firestore.parents.user.get(_options);
    if (doc.exists) {
      return GuardianDTO.fromDocument(doc).domain;
    } else
      return null;
  }

  @override
  Future<bool> get docExists async {
    await checkHasInternet;
    _temp = await _firestore.users.user.get(_options);
    return _temp != null && _temp.exists;
  }

  @override
  Future<bool> isFieldNull(String field) async => await docExists && _temp.data()[field] == null;

  @override
  Future<Either<FirestoreAuthFailure, Unit>> create(Guardian guardian) async {
    try {
      await checkHasInternet;
      final _parentDoc = _firestore.parents.user;
      // If Guardian doc doesn't exist
      if (!(await _parentDoc.get(_options)).exists)
        await _parentDoc.set(
          GuardianDTO.fromDomain(guardian).toJson(),
          SetOptions(merge: true),
        );
      return right(unit);
    } on FirebaseException catch (e) {
      return handleFirestoreException(e);
    }
  }

  @override
  Stream<Either<FirestoreAuthFailure, Guardian>> get read async* {
    final _guardianRef = _firestore.parents.user;
    yield* _guardianRef
        .snapshots(includeMetadataChanges: true)
        .map<Either<FirestoreAuthFailure, Guardian>>((doc) => right(GuardianDTO.fromDocument(doc).domain))
        .onErrorReturnWith(handleFirestoreException);
  }

  @override
  Future<Either<FirestoreAuthFailure, Unit>> update(
    Guardian guardian, {
    Duration timeout = const Duration(seconds: 8),
  }) async {
    try {
      final _guardianRef = _firestore.parents.user;
      await _guardianRef.update(GuardianDTO.fromDomain(guardian).toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == NOT_FOUND) {
        // Wait 5 seconds then retry operation
        retry(
          () => this.update(guardian).timeout(timeout),
          // Retry on SocketException or TimeoutException
          retryIf: (e) => e is SocketException || e is TimeoutException,
        );
      }
      return handleFirestoreException(e);
    }
  }

  @override
  Future<Either<FirestoreAuthFailure, Unit>> get delete async {
    try {
      await _firestore.parents.user.delete();
      return right(unit);
    } on FirebaseException catch (e) {
      return handleFirestoreException(e);
    }
  }

  @override
  Stream<Either<FirestoreAuthFailure, KtList<Guardian>>> get watch async* {
    final _collection = _firestore.parents;
    yield* _collection
        .orderBy(DbConstants.ORDER_BY, descending: true)
        .snapshots(includeMetadataChanges: true)
        .map<Either<FirestoreAuthFailure, KtList<Guardian>>>((snapshot) => right(
              snapshot.docs.map((doc) => GuardianDTO.fromDocument(doc).domain).toImmutableList(),
            ))
        .onErrorReturnWith(handleFirestoreException);
  }
}
