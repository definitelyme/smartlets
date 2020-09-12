import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart' hide Router;
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';
import 'package:smartlets/features/_404.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/manager/router/export.dart';
import 'package:smartlets/manager/theme/theme.dart';
import 'package:smartlets/utils/utils.dart';

class SmartletsApp extends StatelessWidget {
  /// This is the entry point for Smartlets App
  const SmartletsApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // getIt<AuthFacade>().onAuthStateChanged?.listen((option) => option?.fold(() => null, (user) {
    //   if (App.currentRoute != Routes.signUpScreen && App.currentRoute != Routes.PhoneVerification)
    //     navigator.pushAndRemoveUntil(Routes.rootScreen, (_) => false);
    // }));

    // Precache dependencies & images
    Helpers.precache(context);
    // getIt<AuthFacade>().signOut();
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create: (_) => getIt<ThemeCubit>()),
        // BlocProvider<RootBloc>(create: (_) => getIt<RootBloc>(), lazy: true),
      ],
      child: BlocBuilder<ThemeCubit, AppTheme>(
        builder: (context, state) => MaterialApp(
          title: MkStrings.appName.capitalizeFirst(),
          debugShowCheckedModeBanner: false,
          theme: state?.themeData() ?? AppTheme.light().themeData(),
          darkTheme: AppTheme.dark().themeData(),
          builder: ExtendedNavigator.builder<Router>(
            navigatorKey: App.key,
            observers: [NavigationHistoryObserver()],
            router: Router(),
            guards: [AuthGuard()],
            builder: (context, descendant) => Theme(
              data: state?.themeData() ?? AppTheme.light().themeData(),
              child: GestureDetector(
                onTap: () => Helpers.hideKeyboard(context),
                child: descendant,
              ),
            ),
            onUnknownRoute: (settings) => MaterialPageRoute(
              builder: (_) => UnknownRoute(),
            ),
          ),
        ),
      ),
    );
  }
}
