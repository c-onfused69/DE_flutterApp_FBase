import 'package:desh_e_app/bindings/general_bindings.dart';
import 'package:desh_e_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:desh_e_app/utils/theme/theme.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      //home: const OnBoardingScreen(),
      ///Show Load or Circle progress Indicator meanwhile Authentications Reposetory is decided to show relevant screen
      home: const Scaffold(
          backgroundColor: TColors.primary,
          body: Center(child: CircularProgressIndicator(color: Colors.white))),
    );
  }
}
