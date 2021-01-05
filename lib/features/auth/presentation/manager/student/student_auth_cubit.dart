import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:meta/meta.dart';
import 'package:smartlets/features/auth/data/repositories/student_auth_impl.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/shared/shared.dart';

part 'student_auth_cubit.freezed.dart';
part 'student_auth_state.dart';

@Injectable()
class StudentAuthCubit extends Cubit<StudentAuthState> {
  final StudentAuthImpl _facade;
  StreamSubscription<Either<FirestoreAuthFailure, Student>> _readSubscription;
  StreamSubscription<Either<FirestoreAuthFailure, KtList<Student>>> _watchSubscription;

  StudentAuthCubit(this._facade) : super(StudentAuthState.init());

  void get watch async {
    emit(state.copyWith(isLoading: true));
    await _watchSubscription?.cancel();
    _watchSubscription = _facade.watch.listen((b) => notifyWatchUpdate(
          b.getOrElse(() => KtList.empty()),
          b.map((r) => unit),
        ));
    emit(state.copyWith(isLoading: false));
  }

  void create(Student student) async {
    emit(state.copyWith(isLoading: true));
    // Log output if error
    // if (student.failureOption.isSome()) log.d(student.failureOption);
    final _result = await _facade.create(student);
    emit(state.copyWith(isLoading: false, status: _result));
  }

  void update(Student student) async {
    emit(state.copyWith(isLoading: true));
    // Log output if error
    // if (student.failureOption.isSome()) log.d(student.failureOption);
    final _result = await _facade.update(student);
    emit(state.copyWith(isLoading: false, status: _result));
  }

  void get read async {
    emit(state.copyWith(isLoading: true));
    await _readSubscription?.cancel();
    _readSubscription = _facade.read.listen((a) => notifyReadUpdate(
          a.getOrElse(() => null),
          a.map((r) => unit),
        ));
    emit(state.copyWith(isLoading: false));
  }

  void get delete async {
    emit(state.copyWith(isLoading: true));
    final _result = await _facade.delete;
    emit(state.copyWith(isLoading: false, status: _result));
  }

  Future<void> detachListeners() async {
    await _readSubscription?.cancel();
    await _watchSubscription?.cancel();
  }

  void notifyWatchUpdate(KtList<Student> students, Either<FirestoreAuthFailure, Unit> status) {
    emit(state.copyWith(
      students: students,
      status: status,
    ));
  }

  void notifyReadUpdate(Student student, Either<FirestoreAuthFailure, Unit> status) {
    emit(state.copyWith(
      student: student,
      status: status,
    ));
  }

  @override
  Future<void> close() async {
    await detachListeners();
    return super.close();
  }
}
