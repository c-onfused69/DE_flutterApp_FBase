import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'app.dart';
import 'package:firebase_core/firebase_core.dart';

import 'data/repositories/authentication/authentication_repository.dart';
import 'firebase_options.dart';

Future<void> main() async {
// Todo: Add Widgets Binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

// Todo: Init Local Storage
  await GetStorage.init();

// Todo: Init Payment Methods
// Todo: Await Native Splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
// Todo: Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then(
    (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );

// Load all the Material Design / Themes / Localizations / Bindings

  runApp(const App());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,

      theme: ThemeData(),
    );
  }
}
