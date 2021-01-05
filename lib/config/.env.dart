import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:smartlets/manager/locator/locator.dart';

enum BuildFlavor { prod, dev }

BuildEnvironment get env => _env;
BuildEnvironment _env;

class BuildEnvironment {
  final BuildFlavor flavor;
  final Duration splashDuration;

  BuildEnvironment._init({
    this.flavor,
    this.splashDuration = const Duration(seconds: 2),
  });

  /// Sets up the top-level [env] getter on the first call only.
  static Future<void> init({@required BuildFlavor flavor}) async {
    _env ??= BuildEnvironment._init(
      flavor: flavor,
      splashDuration: flavor == BuildFlavor.dev ? Duration.zero : const Duration(milliseconds: 1500),
    );

    switch (flavor) {
      case BuildFlavor.dev:
        await locator(Environment.dev);
        break;
      case BuildFlavor.prod:
        await locator(Environment.prod);
        break;
      default:
        await locator(Environment.prod);
    }
  }
}
