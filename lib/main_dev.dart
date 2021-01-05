import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:smartlets/app.dart';
import 'package:smartlets/config/.env.dart';
import 'package:smartlets/utils/utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   statusBarColor: Colors.transparent,
  //   statusBarBrightness: Brightness.dark,
  //   statusBarIconBrightness: Brightness.light,
  //   systemNavigationBarIconBrightness: Brightness.light,
  // ));

  // Setup Environmental variables & Service provider
  await BuildEnvironment.init(flavor: BuildFlavor.dev);
  assert(env != null);

  try {
    // Initializes Hive with a valid directory in your app files.
    await Hive.initFlutter();
  } catch (e, trace) {
    log.e("Error initializing Hive", e, trace);
  }

  try {
    // Initialize Hydrated storage
    HydratedBloc.storage = await HydratedStorage.build();
  } catch (e, trace) {
    log.e("Error initializing HydratedStorage", e, trace);
  }

  runApp(SmartletsApp());
}
