import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/theme/theme.dart';

/// -- Use this class to setup themes, initial bindings, any animations and much more using Material Widget
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,

      /// Show Loader pr Circular Progress Indicator meanwhile Authentication Repository is deciding to show relevant screen
      home: const Scaffold(
        backgroundColor: TColors.primary,
        body: Center(
          child: CircularProgressIndicator(color: TColors.white),
        ),
      ),
    );
  }
}
