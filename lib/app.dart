import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart' hide Router;
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';
import 'package:smartlets/features/auth/presentation/manager/blocs.dart';
import 'package:smartlets/features/on_boarding/manager/on_boarding_cubit.dart';
import 'package:smartlets/features/parent/presentation/manager/blocs.dart';
import 'package:smartlets/features/shared/shared.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/manager/router/export.dart';
import 'package:smartlets/manager/theme/theme.dart';
import 'package:smartlets/utils/utils.dart';

class SmartletsApp extends StatelessWidget {
  /// This is the entry point for Smartlets App
  const SmartletsApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Precache dependencies & images
    Helpers.precache(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create: (_) => getIt<ThemeCubit>()),
        BlocProvider<OnBoardingCubit>(create: (_) => getIt<OnBoardingCubit>()..getRole()),
        BlocProvider<AuthWatcherCubit>(create: (_) => getIt<AuthWatcherCubit>()),
        BlocProvider<FirebaseFunctionsCubit>(create: (_) => getIt<FirebaseFunctionsCubit>()),
        BlocProvider<PermissionsCubit>(create: (_) => getIt<PermissionsCubit>()),
        BlocProvider<CreditCardCubit>(create: (_) => getIt<CreditCardCubit>()),
      ],
      child: BlocBuilder<ThemeCubit, AppTheme>(
        builder: (context, app) => BlocBuilder<PermissionsCubit, PermissionsState>(
          builder: (context, _) => Portal(
            child: MaterialApp(
              title: AppStrings.appName.capitalizeFirst(),
              debugShowCheckedModeBanner: false,
              theme: app?.themeData() ?? AppTheme.light().themeData(),
              darkTheme: AppTheme.dark().themeData(),
              builder: ExtendedNavigator(
                navigatorKey: App.key,
                initialRoute: Routes.splashScreen,
                observers: [NavigationHistoryObserver()],
                router: Router(),
                guards: [AuthGuard()],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
