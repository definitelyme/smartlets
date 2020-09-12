import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:smartlets/manager/locator/locator.dart';

enum BuildFlavor { prod, dev }

BuildEnvironment get env => _env;
BuildEnvironment _env;

class BuildEnvironment {
  final BuildFlavor flavor;

  BuildEnvironment._init({this.flavor});

  /// Sets up the top-level [env] getter on the first call only.
  static Future<void> init({@required flavor}) async {
    _env ??= BuildEnvironment._init(
      flavor: flavor,
    );

    if (flavor == BuildFlavor.dev)
      await locator(Environment.dev);
    else if (flavor == BuildFlavor.prod) await locator(Environment.prod);
  }
}
