// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:smartlets/features/auth/presentation/manager/auth_bloc.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/auth/presentation/manager/auth_watcher/auth_watcher_cubit.dart';
import 'package:smartlets/features/parent/presentation/manager/credit_card/credit_card_cubit.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:smartlets/features/auth/data/repositories/firebase_auth_impl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:smartlets/features/shared/manager/firebase/functions_cubit/firebase_functions_cubit.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:smartlets/features/shared/shared.dart';
import 'package:smartlets/features/shared/data/repository/firebase_storage_impl.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:smartlets/features/auth/presentation/manager/parent/guardian_auth_cubit.dart';
import 'package:smartlets/features/auth/data/repositories/guardian_auth_impl.dart';
import 'package:smartlets/manager/locator/modules/modules.dart';
import 'package:smartlets/features/on_boarding/manager/on_boarding_cubit.dart';
import 'package:smartlets/features/parent/presentation/manager/parent_nav_cubit.dart';
import 'package:smartlets/features/shared/manager/permissions/permissions_cubit.dart';
import 'package:smartlets/features/shared/data/repository/permissions_repository.dart';
import 'package:smartlets/features/student/presentation/manager/playback/playback_bloc.dart';
import 'package:smartlets/features/shared/manager/profile_image_cubit/profile_image_cubit.dart';
import 'package:smartlets/features/shared/manager/firebase/storage_cubit/storage_cubit.dart';
import 'package:smartlets/features/auth/presentation/manager/student/student_auth_cubit.dart';
import 'package:smartlets/features/auth/data/repositories/student_auth_impl.dart';
import 'package:smartlets/features/student/presentation/manager/student_nav_cubit.dart';
import 'package:smartlets/manager/theme/manager/theme_cubit.dart';
import 'package:smartlets/features/auth/presentation/manager/user/user_auth_cubit.dart';
import 'package:smartlets/features/auth/data/repositories/user_auth_impl.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

extension GetItInjectableX on GetIt {
  Future<GetIt> $initGetIt({
    String environment,
    EnvironmentFilter environmentFilter,
  }) async {
    final gh = GetItHelper(this, environment, environmentFilter);
    final modules = _$Modules();
    gh.factory<CreditCardCubit>(() => CreditCardCubit());
    gh.lazySingleton<DataConnectionChecker>(() => modules.connectionChecker);
    gh.lazySingleton<FacebookLogin>(() => modules.facebookLogin);
    final firebaseApp = await modules.firebaseApp;
    gh.factory<FirebaseApp>(() => firebaseApp);
    gh.lazySingleton<FirebaseAuth>(() => modules.firebaseAuth);
    gh.lazySingleton<FirebaseFirestore>(() => modules.firestore);
    gh.lazySingleton<FirebaseFunctions>(() => modules.functions);
    gh.factory<FirebaseStorage>(() => modules.storage);
    gh.lazySingleton<FirebaseStorageFacade>(
        () => FirebaseStorageImpl(get<FirebaseStorage>()));
    gh.lazySingleton<GoogleSignIn>(() => modules.googleSignIn);
    gh.lazySingleton<GuardianAuthImpl>(() => GuardianAuthImpl(
        get<FirebaseFirestore>(), get<DataConnectionChecker>()));
    gh.factory<ParentNavCubit>(() => ParentNavCubit());
    gh.lazySingleton<PermissionsRepository>(() => PermissionsRepository());
    gh.factory<PlaybackBloc>(() => PlaybackBloc());
    gh.factory<ProfileImageCubit>(() => ProfileImageCubit());
    gh.factory<StorageCubit>(() => StorageCubit(get<FirebaseStorageFacade>()));
    gh.lazySingleton<StudentAuthImpl>(() => StudentAuthImpl(
        get<FirebaseFirestore>(), get<DataConnectionChecker>()));
    gh.factory<StudentNavCubit>(() => StudentNavCubit());
    gh.factory<ThemeCubit>(() => ThemeCubit());
    gh.lazySingleton<UserAuthImpl>(() => UserAuthImpl(
          get<FirebaseFirestore>(),
          get<DataConnectionChecker>(),
          get<StudentAuthImpl>(),
          get<GuardianAuthImpl>(),
        ));
    gh.lazySingleton<AuthFacade>(() => FirebaseAuthImpl.instance(
          get<FirebaseAuth>(),
          get<GoogleSignIn>(),
          get<FacebookLogin>(),
          get<UserAuthImpl>(),
          get<DataConnectionChecker>(),
        ));
    gh.factory<AuthWatcherCubit>(
        () => AuthWatcherCubit(get<AuthFacade>(), get<UserAuthImpl>()));
    gh.factory<GuardianAuthCubit>(
        () => GuardianAuthCubit(get<GuardianAuthImpl>()));
    gh.factory<OnBoardingCubit>(() => OnBoardingCubit(
          get<DataConnectionChecker>(),
          get<AuthFacade>(),
          get<UserAuthImpl>(),
        ));
    gh.factory<StudentAuthCubit>(
        () => StudentAuthCubit(get<StudentAuthImpl>()));
    gh.factory<UserAuthCubit>(() => UserAuthCubit(get<UserAuthImpl>()));
    gh.factory<AuthBloc>(() => AuthBloc(get<AuthFacade>()));

    // Eager singletons must be registered in the right order
    gh.singleton<FirebaseFunctionsCubit>(FirebaseFunctionsCubit(
      get<AuthFacade>(),
      get<FirebaseFunctions>(),
      get<UserAuthImpl>(),
    ));
    gh.singleton<PermissionsCubit>(
        PermissionsCubit(get<PermissionsRepository>()));
    return this;
  }
}

class _$Modules extends Modules {}
