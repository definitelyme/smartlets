import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:smartlets/features/auth/data/repositories/user_auth_impl.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/shared/shared.dart';
import 'package:smartlets/utils/utils.dart';

part 'auth_watcher_cubit.freezed.dart';
part 'auth_watcher_state.dart';

typedef Tasks = void Function(Option<User> option);

@Injectable()
class AuthWatcherCubit extends Cubit<AuthWatcherState> {
  final AuthFacade _facade;
  final UserAuthImpl _userFacade;
  StreamSubscription<Option<User>> _authStateChanges;
  StreamSubscription<Option<User>> _userChanges;

  AuthWatcherCubit(this._facade, this._userFacade) : super(AuthWatcherState.init());

  // This will always return the current user data
  User get firebaseUser => _facade.currentUser.getOrElse(() => null);

  Future<User> get future => _userFacade.single;

  void listenToAuthChanges(Tasks actions) async {
    emit(state.copyWith(
      isLoading: true,
      isAuthenticated: _facade.currentUser.isSome(),
      user: _facade.currentUser?.getOrElse(() => null),
    ));
    // Cancel previous subscription
    await unsubscribeAuthChanges;
    // Install new subscription
    _authStateChanges ??= _facade.onAuthStateChanged.listen(actions);
    emit(state.copyWith(isLoading: false));
  }

  void onUserChanges(Tasks actions) async {
    emit(state.copyWith(
      isLoading: true,
      isAuthenticated: _facade.currentUser.isSome(),
      user: _facade.currentUser?.getOrElse(() => null),
    ));
    // Cancel previous subscription
    await unsubscribeUserChanges;
    // Install new subscription
    _userChanges ??= _facade.onUserChanges.listen(actions);
    emit(state.copyWith(isLoading: false));
  }

  Future<void> get unsubscribeAuthChanges async => await _authStateChanges?.cancel();

  Future<void> get unsubscribeUserChanges async => await _userChanges?.cancel();

  Future<void> get signOut async {
    emit(state.copyWith(isLoading: true));

    try {
      // Update user data before signout
      await _userFacade.update(User(lastSeenAt: DateTime.now()));
    } catch (_) {
      log.e("Exception caught in AUTH WATCHER CUBIT [signOut & Update LastSeenAt] ==> $_");
    }

    try {
      // Signout the Authenticated User
      await _facade.signOut();
    } catch (_) {
      log.e("Exception caught in AUTH WATCHER CUBIT [signOut] ==> $_");
    }

    emit(state.copyWith(
      isLoading: false,
      isAuthenticated: _facade.currentUser.isSome(),
      user: _facade.currentUser?.getOrElse(() => null),
    ));
  }

  @override
  Future<void> close() async {
    await _authStateChanges?.cancel();
    await _userChanges?.cancel();
    return super.close();
  }
}
