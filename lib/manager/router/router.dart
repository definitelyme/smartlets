import 'package:auto_route/auto_route_annotations.dart';
import 'package:smartlets/features/_404.dart';
import 'package:smartlets/features/on_boarding/presentation/splash_screen.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(page: SplashScreen, initial: true, maintainState: true),
    AdaptiveRoute(path: "*", page: UnknownRoute, maintainState: true),
  ],
  generateNavigationHelperExtension: true,
  preferRelativeImports: false,
)
class $Router {}
