import 'package:flutter/material.dart';
import 'package:t_store/utils/theme/theme.dart';

/// -- Use this class to setup themes, initial bindings, any animations and much more using Material Widget
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
    );
  }
}