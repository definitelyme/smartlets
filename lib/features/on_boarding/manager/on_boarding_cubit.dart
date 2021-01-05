import 'package:bloc/bloc.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:smartlets/features/auth/data/repositories/user_auth_impl.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/on_boarding/models/roles.dart';
import 'package:smartlets/features/shared/shared.dart';

part 'on_boarding_cubit.freezed.dart';
part 'on_boarding_state.dart';

@Injectable()
class OnBoardingCubit extends Cubit<OnBoardingState> {
  static const String SUBSCRIPTION_KEY = "subscription-type";
  final box = Hive.openLazyBox(USER_SETTINGS_KEY__HIVE);
  final DataConnectionChecker _connectionChecker;
  final AuthFacade _auth;
  final UserAuthImpl _userFacade;

  OnBoardingCubit(this._connectionChecker, this._auth, this._userFacade) : super(OnBoardingState());

  void checkInternetConnection() async {
    final conn = await _connectionChecker.hasConnection;
    emit(state.copyWith(hasStableInternet: conn));
  }

  void applyParentRole() async {
    emit(state.copyWith(isLoading: true, shouldListen: false));
    await (await box).put(SUBSCRIPTION_KEY, Roles.parent.name);
    emit(state.copyWith(role: Roles.parent));
    await Future.delayed(Duration(milliseconds: 1000), () => false);
    emit(state.copyWith(isLoading: false, shouldListen: true));
  }

  void applyStudentRole() async {
    emit(state.copyWith(isLoading: true, shouldListen: false));
    await (await box).put(SUBSCRIPTION_KEY, Roles.student.name);
    emit(state.copyWith(role: Roles.student));
    await Future.delayed(Duration(milliseconds: 1000), () => false);
    emit(state.copyWith(isLoading: false, shouldListen: true));
  }

  void applyAdminRole() async {
    emit(state.copyWith(isLoading: true, shouldListen: false));
    await (await box).put(SUBSCRIPTION_KEY, Roles.admin.name);
    emit(state.copyWith(role: Roles.admin));
    await Future.delayed(Duration(milliseconds: 1000), () => false);
    emit(state.copyWith(isLoading: false, shouldListen: true));
  }

  Future<void> getRole() async {
    emit(state.copyWith(isLoading: true, shouldListen: false));

    final local = await (await box).get(SUBSCRIPTION_KEY);

    User firestoreUser;

    if (_auth.currentUser.isSome()) {
      // TODO: Wrap in a try & catch (for poor internet connection)
      firestoreUser = await _userFacade.single;
      await (await box).put(SUBSCRIPTION_KEY, firestoreUser.role?.name ?? local);
    }

    emit(state.copyWith(
      role: firestoreUser?.role != null
          ? firestoreUser.role
          : local != null
              ? Roles.valueOf(local)
              : Roles.student,
      isLoading: false,
    ));
  }
}
