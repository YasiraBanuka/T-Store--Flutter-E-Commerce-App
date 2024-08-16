import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_store/app.dart';
import 'package:t_store/data/repositories/authentication/authentication_repository.dart';
import 'package:t_store/firebase_options.dart';

/// ----- Entry point of Flutter App --------
Future<void> main() async {
  /// Widgets Binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  /// GetX Local Storage
  await GetStorage.init();

  /// Await Splash until items load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  /// Initialize Firebase & Authentication Repository
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then(
        (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );

  // Todo: Initialize Authentication

  // Load all the Material Design / Themes / Localizations / Bindings
  runApp(const App());
}
