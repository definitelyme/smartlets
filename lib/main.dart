import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:smartlets/app.dart';
import 'package:smartlets/config/.env.dart';
import 'package:smartlets/utils/utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Setup Environmental variables & Service provider
  await BuildEnvironment.init(flavor: BuildFlavor.prod);
  assert(env != null);

  // Add Google Fonts Licensing
  // LicenseRegistry.addLicense(() async* {
  //   final license = await rootBundle.loadString('assets/fonts/google_fonts/OFL.txt');
  //   yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  // });

  // Initializes Hive with a valid directory in your app files.
  await Hive.initFlutter();

  // Initialize Hydrated storage
  HydratedBloc.storage = await HydratedStorage.build();

  runApp(SmartletsApp());
}
