library user_auth_cubit;

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:meta/meta.dart';
import 'package:smartlets/features/auth/data/repositories/user_auth_impl.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/shared/shared.dart';

part 'user_auth_cubit.freezed.dart';
part 'user_auth_state.dart';

@injectable
class UserAuthCubit extends Cubit<UserAuthState> {
  final UserAuthImpl _facade;
  StreamSubscription<Either<FirestoreAuthFailure, User>> _readSubscription;
  StreamSubscription<Either<FirestoreAuthFailure, KtList<User>>> _watchSubscription;

  UserAuthCubit(this._facade) : super(UserAuthState.init());

  void get watch async {
    emit(state.copyWith(isLoading: true));
    await _watchSubscription?.cancel();
    _watchSubscription = _facade.watch.listen((b) => notifyWatchUpdate(
          b.getOrElse(() => KtList.empty()),
          b.map((r) => unit),
        ));
    emit(state.copyWith(isLoading: false));
  }

  void create(User user) async {
    emit(state.copyWith(isLoading: true));
    // Log output if error
    // if (user.failureOption.isSome()) log.d(user.failureOption);
    final _result = await _facade.create(user);
    emit(state.copyWith(isLoading: false, status: _result));
  }

  void update(User user) async {
    emit(state.copyWith(isLoading: true));
    // Log output if error
    // if (user.failureOption.isSome()) log.d(user.failureOption);
    final _result = await _facade.update(user);
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

  void notifyWatchUpdate(KtList<User> users, Either<FirestoreAuthFailure, Unit> status) {
    emit(state.copyWith(
      users: users,
      status: status,
    ));
  }

  void notifyReadUpdate(User user, Either<FirestoreAuthFailure, Unit> status) {
    emit(state.copyWith(
      user: user,
      status: status,
    ));
  }

  @override
  Future<void> close() async {
    await _facade.update(User(lastSeenAt: DateTime.now()));
    await _watchSubscription?.cancel();
    await _readSubscription?.cancel();
    return super.close();
  }
}
