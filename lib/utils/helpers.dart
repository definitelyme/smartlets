import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logger/logger.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';
import 'package:path_provider/path_provider.dart';
import 'package:smartlets/manager/theme/theme.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

// ignore: non_constant_identifier_names
final App = Helpers.I;

final log = Helpers.logger;

ExtendedNavigatorState<RouterBase> get navigator => App.context.navigator;

ExtendedNavigatorState<RouterBase> inner(BuildContext context) =>
    ExtendedNavigator.of(context);

NavigationHistoryObserver get observer => NavigationHistoryObserver();

// ignore: avoid_positional_boolean_parameters
void throwIf(bool condition, Object error) {
  if (condition) throw error;
}

// ignore: avoid_positional_boolean_parameters
void throwIfNot(bool condition, Object error) {
  if (!condition) throw error;
}

class Helpers {
  static const Duration autoRetrievalTimeout = const Duration(seconds: 40);
  static const String currency = "₦";

  static Helpers get I => Helpers._();
  static double buttonRadius = 12.0;
  static double appPadding = App.width * 0.04;
  static Future<Directory> get rootDir async =>
      await getExternalStorageDirectory();
  static Future<Directory> get cacheDir async => await getTemporaryDirectory();
  static Future<Directory> get documentsDir async =>
      await getApplicationDocumentsDirectory();
  static ScrollPhysics physics = const BouncingScrollPhysics();
  static Duration willPopTimeout = const Duration(seconds: 3);
  static Logger logger = Logger(
    filter: env.flavor == BuildFlavor.dev
        ? DevelopmentFilter()
        : ProductionFilter(),
    printer: HybridPrinter(PrettyPrinter(
      methodCount: 3, // number of method calls to be displayed
      errorMethodCount: 10, // number of method calls if stacktrace is provided
      lineLength: 100, // width of the output
      colors: true, // Colorful log messages
      printEmojis: true,
      printTime: false,
    )),
  );

  static String writeNotNull(String other) {
    if (other.trim() != null || other.trim().isNotEmpty) {
      return other;
    }
    return '';
  }

  static DateTime getDate(DateTime d) =>
      DateTime(d.year, d.month, d.day, d.hour, d.minute, d.second);

  static void hideKeyboard([BuildContext context]) {
    FocusNode currentFocus = FocusScope.of(context ?? App.context);
    if (!currentFocus.hasPrimaryFocus &&
        !currentFocus.hasFocus &&
        currentFocus.children.isEmpty)
      FocusManager.instance.primaryFocus.unfocus();
  }

  static T optionOf<T>(dynamic _default, dynamic dark, {BuildContext context}) {
    assert(_default != null);
    assert(dark != null);
    var isDarkMode =
        BlocProvider.of<ThemeCubit>(context ?? App.context).isDarkMode ||
            (MediaQuery.of(context ?? App.context).platformBrightness ==
                Brightness.dark);

    return isDarkMode ? dark : _default;
  }

  static Color computeLuminance(Color color) =>
      color.computeLuminance() > 0.5 ? Colors.black : Colors.white;

  static Future<void> precache(BuildContext context) async {
    context ??= App.context;
    await precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "${AppAssets.SVG_DIR}/doodle.svg"),
        context);
    await precacheImage(AssetImage(AppAssets.anonymous), context);
    await precacheImage(AssetImage(AppAssets.courseFrame1), context);
    await precacheImage(AssetImage(AppAssets.courseFrame2), context);
    await precacheImage(AssetImage(AppAssets.courseFrame3), context);
    await precacheImage(AssetImage(AppAssets.courseFrame4), context);
    await precacheImage(AssetImage(AppAssets.playback), context);
  }

  static String hhmmss([Duration duration = Duration.zero]) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${duration.inHours > 0 ? twoDigits(duration.inHours).pad(":") : ''}"
        "${twoDigitMinutes.pad(":")}"
        "$twoDigitSeconds";
  }

  static Future<void> platformPop({bool animated = true}) async {
    await SystemChannels.platform
        .invokeMethod<void>('SystemNavigator.pop', animated);
  }

  final DateTime today = DateTime.now();

  Color get backgroundOverlayColor => App.theme.primaryColor.withOpacity(0.91);

  /// Current BuildContext
  BuildContext _ctx;

  Helpers._();

  Widget get circularLoadingOverlay => Container(
        color: App.theme.primaryColor.withOpacity(0.65),
        child: Center(
            child: CircularProgressBar.adaptive(
          width: width * 0.08,
          height: width * 0.08,
          strokeWidth: 3.5,
          radius: 14,
        )),
      );

  GlobalKey<NavigatorState> addKey(GlobalKey<NavigatorState> newKey) {
    key = newKey;
    return key;
  }

  GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();

  Map<int, GlobalKey<NavigatorState>> _keys = {};

  GlobalKey<NavigatorState> nestedKey(int key) {
    _keys.putIfAbsent(key, () => GlobalKey<NavigatorState>());
    return _keys[key];
  }

  GlobalKey<NavigatorState> global(int k) {
    if (k == null) {
      return key;
    }
    if (!_keys.containsKey(k)) {
      throw 'route id not found';
    }
    return _keys[k];
  }

  /// give access to currentContext
  BuildContext get context => _ctx ?? key.currentContext;

  /// Returns the current route path
  String get currentRoute => observer.top.settings.name;

  /// give access to current Overlay Context
  BuildContext get overlayContext => key.currentState.overlay.context;

  /// give access to Theme.of(context)
  ThemeData get theme => Theme.of(context);

  /// give access to TextTheme.of(context)
  TextTheme get textTheme => Theme.of(context).textTheme;

  /// give access to MediaQuery.of(context)
  MediaQueryData get mediaQuery => MediaQuery.of(context);

  WidgetsBinding get engine => WidgetsBinding.instance;

  /// give access to Theme.of(context).iconTheme.color
  Color get iconColor => Theme.of(context).iconTheme.color;

  /// give access to FocusScope.of(context)
  FocusNode get focusScope => FocusManager.instance.primaryFocus;

  /// give access to Immutable MediaQuery.of(context).size.height
  double get height => MediaQuery.of(context).size.height;

  /// give access to Immutable MediaQuery.of(context).size.width
  double get width => MediaQuery.of(context).size.width;

  /// Check if dark mode theme is enable on platform on android Q+
  bool get isPlatformDarkMode =>
      (mediaQuery.platformBrightness == Brightness.dark);

  /// Push the given [page], and then pop several [pages] in the stack until
  /// [predicate] returns true
  Future<T> offUntil<T>(Route<T> page, RoutePredicate predicate, {int id}) {
    // if (key.currentState.mounted) // add this if appear problems on future with route navigate
    // when widget don't mounted
    return global(id).currentState.pushAndRemoveUntil(page, predicate);
  }

  Future<T> offAllNamed<T>(String newRouteName,
      {RoutePredicate predicate, Object arguments, int id}) {
    var route = (Route<dynamic> rota) => false;

    return global(id).currentState.pushNamedAndRemoveUntil(
        newRouteName, predicate ?? route,
        arguments: arguments);
  }

  /// Push the given named [page], and then pop several pages in the stack
  /// until [predicate] returns true
  ///
  /// You can send any type of value to the other route in the [arguments].
  ///
  /// Note: Always put a slash on the route ('/page1'), to avoid unexpected errors
  Future<T> offNamedUntil<T>(
    String page,
    RoutePredicate predicate, {
    int id,
    Object arguments,
  }) {
    return global(id)
        .currentState
        .pushNamedAndRemoveUntil(page, predicate, arguments: arguments);
  }

  /// Pop the current named page and pushes a new [page] to the stack in its place
  ///
  /// You can send any type of value to the other route in the [arguments].
  /// It is very similar to `offNamed()` but use a different approach
  ///
  /// The `offNamed()` pop a page, and goes to the next. The `offAndToNamed()` goes
  /// to the next page, and removes the previous one. The route transition
  /// animation is different.
  Future<T> offAndToNamed<T>(String page,
      {Object arguments, int id, dynamic result}) {
    return global(id)
        .currentState
        .popAndPushNamed(page, arguments: arguments, result: result);
  }

  /// Remove a specific [route] from the stack
  ///
  /// [id] is for when you are using nested navigation,
  /// as explained in documentation
  void removeRoute(Route<dynamic> route, {int id}) {
    return global(id).currentState.removeRoute(route);
  }

  /// As a rule, Flutter knows which widget to update,
  /// so this command is rarely needed. We can mention situations
  /// where you use const so that widgets are not updated with setState,
  /// but you want it to be forcefully updated when an event like
  /// language change happens. using context to make the widget dirty
  /// for performRebuild() is a viable solution.
  /// However, in situations where this is not possible, or at least,
  /// is not desired by the developer, the only solution for updating
  /// widgets that Flutter does not want to update is to use reassemble
  /// to forcibly rebuild all widgets. Attention: calling this function will
  /// reconstruct the application from the sketch, use this with caution.
  /// Your entire application will be rebuilt, and touch events will not
  /// work until the end of rendering.
  Future<void> forceAppUpdate() async {
    void rebuild(Element el) {
      el.markNeedsBuild();
      el.visitChildren(rebuild);
    }

    (context as Element).visitChildren(rebuild);
    // await engine.reassembleApplication();
  }

  PageRoute<T> adaptivePageRoute<T>({
    String title,
    @required WidgetBuilder builder,
    RouteSettings settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) {
    return Platform.isIOS
        ? CupertinoPageRoute(
            title: title,
            builder: builder,
            settings: settings,
            maintainState: maintainState,
            fullscreenDialog: fullscreenDialog,
          )
        : MaterialPageRoute(
            builder: builder,
            settings: settings,
            maintainState: maintainState,
            fullscreenDialog: fullscreenDialog,
          );
  }

  Future<U> showAlertDialog<U>({
    BuildContext context,
    WidgetBuilder builder,
    bool barrierDismissible = true,
    Color barrierColor,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings routeSettings,
  }) async {
    if (Platform.isIOS)
      return showCupertinoDialog<U>(
        context: context ?? App.context,
        builder: builder,
        useRootNavigator: useRootNavigator ?? true,
        barrierDismissible: barrierDismissible ?? false,
        routeSettings: routeSettings,
      );
    return showDialog<U>(
      context: context ?? App.context,
      builder: builder,
      barrierDismissible: barrierDismissible ?? true,
      barrierColor: barrierColor,
      useSafeArea: useSafeArea ?? true,
      useRootNavigator: useRootNavigator ?? true,
      routeSettings: routeSettings,
    );
  }
}

class Log with LogMixin {
  final String tag;
  final String message;

  Log({this.tag, @required this.message});
}

mixin LogMixin {
  void d({String tag, String message, dynamic ex}) =>
      print("debug: $tag: $message\n\n$ex");

  void w({String tag, String message, dynamic ex}) =>
      print("Warning!! $tag: $message\n\n$ex");
}
