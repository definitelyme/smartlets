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
import 'package:smartlets/features/student/data/exports.dart';
import 'package:smartlets/utils/utils.dart';

@LazySingleton()
class StudentAuthImpl with FirestoreAuthMixin<Student> {
  final FirebaseFirestore _firestore;
  final DataConnectionChecker _connectionChecker;
  GetOptions _options = GetOptions(source: Source.serverAndCache);
  // Temporary document snapshot (Used to check if fieldIsNull)
  DocumentSnapshot _temp;

  StudentAuthImpl(this._firestore, this._connectionChecker);

  Future<bool> get checkHasInternet async {
    var conn = await _connectionChecker.hasConnection;
    if (conn)
      _options = GetOptions(source: Source.server);
    else
      _options = GetOptions(source: Source.cache);
    return conn;
  }

  @override
  Future<Student> get single async {
    await checkHasInternet;
    DocumentSnapshot doc = await _firestore.students.user.get(_options);
    if (doc.exists) {
      return StudentDTO.fromDocument(doc).domain;
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
  Future<Either<FirestoreAuthFailure, Unit>> create(Student student) async {
    try {
      await checkHasInternet;
      final _studentDoc = _firestore.students.user;
      // If User data doesn't exist
      if (!(await _studentDoc.get(_options)).exists)
        await _studentDoc.set(
          StudentDTO.fromDomain(student).toJson(),
          SetOptions(merge: true),
        );
      return right(unit);
    } on FirebaseException catch (e) {
      return handleFirestoreException(e);
    }
  }

  @override
  Stream<Either<FirestoreAuthFailure, Student>> get read async* {
    final _studentDoc = _firestore.students.user;
    yield* _studentDoc
        .snapshots(includeMetadataChanges: true)
        .map<Either<FirestoreAuthFailure, Student>>((doc) => right(StudentDTO.fromDocument(doc).domain))
        .onErrorReturnWith(handleFirestoreException);
  }

  @override
  Future<Either<FirestoreAuthFailure, Unit>> update(
    Student student, {
    Duration timeout = const Duration(seconds: 8),
  }) async {
    try {
      final _studentDoc = _firestore.students.user;
      await _studentDoc.update(StudentDTO.fromDomain(student).toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == NOT_FOUND) {
        // Wait 5 seconds then retry operation
        retry(
          () => this.update(student).timeout(timeout),
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
      await _firestore.students.user.delete();
      return right(unit);
    } on FirebaseException catch (e) {
      return handleFirestoreException(e);
    }
  }

  @override
  Stream<Either<FirestoreAuthFailure, KtList<Student>>> get watch async* {
    final _collection = _firestore.students;
    yield* _collection
        .orderBy(DbConstants.ORDER_BY, descending: true)
        // .limit(10)
        // .startAfter(values)
        .snapshots(includeMetadataChanges: true)
        .map<Either<FirestoreAuthFailure, KtList<Student>>>((snapshot) => right(
              snapshot.docs.map((doc) => StudentDTO.fromDocument(doc).domain).toImmutableList(),
            ))
        .onErrorReturnWith(handleFirestoreException);
  }
}
