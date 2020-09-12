// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../../features/_404.dart';
import '../../features/on_boarding/presentation/splash_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String unknownRoute = '*';
  static const all = <String>{
    splashScreen,
    unknownRoute,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.unknownRoute, page: UnknownRoute),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SplashScreen(),
        settings: data,
        maintainState: true,
      );
    },
    UnknownRoute: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => UnknownRoute(),
        settings: data,
        maintainState: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashScreen() => push<dynamic>(Routes.splashScreen);

  Future<dynamic> pushUnknownRoute() => push<dynamic>(Routes.unknownRoute);
}
