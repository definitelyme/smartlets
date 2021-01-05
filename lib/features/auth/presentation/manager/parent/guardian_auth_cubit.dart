import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:meta/meta.dart';
import 'package:smartlets/features/auth/data/repositories/guardian_auth_impl.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';

part 'guardian_auth_cubit.freezed.dart';
part 'guardian_auth_state.dart';

@Injectable()
class GuardianAuthCubit extends Cubit<GuardianAuthState> {
  final GuardianAuthImpl _facade;
  StreamSubscription<Either<FirestoreAuthFailure, Guardian>> _readSubscription;
  StreamSubscription<Either<FirestoreAuthFailure, KtList<Guardian>>> _watchSubscription;

  GuardianAuthCubit(this._facade) : super(GuardianAuthState.init());

  void get watch async {
    emit(state.copyWith(isLoading: true));
    await _watchSubscription?.cancel();
    _watchSubscription = _facade.watch.listen((b) => notifyWatchUpdate(
          b.getOrElse(() => KtList.empty()),
          b.map((r) => unit),
        ));
    emit(state.copyWith(isLoading: false));
  }

  void create(Guardian guardian) async {
    emit(state.copyWith(isLoading: true));
    // Log output if error
    // if (guardian.failureOption.isSome()) log.d(guardian.failureOption);
    final _result = await _facade.create(guardian);
    emit(state.copyWith(isLoading: false, status: _result));
  }

  void update(Guardian guardian) async {
    emit(state.copyWith(isLoading: true));
    // Log output if error
    // if (guardian.failureOption.isSome()) log.d(guardian.failureOption);
    final _result = await _facade.update(guardian);
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

  void notifyWatchUpdate(KtList<Guardian> guardians, Either<FirestoreAuthFailure, Unit> status) {
    emit(state.copyWith(
      parents: guardians,
      status: status,
    ));
  }

  void notifyReadUpdate(Guardian guardian, Either<FirestoreAuthFailure, Unit> status) {
    emit(state.copyWith(
      guardian: guardian,
      status: status,
    ));
  }

  @override
  Future<void> close() async {
    await detachListeners();
    return super.close();
  }
}
