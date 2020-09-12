import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:smartlets/app.dart';
import 'package:smartlets/config/debug.env.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Setup Environmental variables & Service provider
  await BuildEnvironment.init(flavor: BuildFlavor.dev);
  assert(env != null);

  // Initialize Hydrated storage
  HydratedBloc.storage = await HydratedStorage.build();

  runApp(SmartletsApp());
}
