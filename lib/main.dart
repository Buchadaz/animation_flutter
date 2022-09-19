import 'package:flutter/material.dart';
import 'package:login_valid/src/features/authentication/screens/splash_screen.dart';
import 'package:login_valid/src/features/authentication/screens/welcome_screen.dart';
import 'package:login_valid/src/utils/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      //theme: TAppTheme.light,
      //darkTheme: TAppTheme.dark,
      home: SplashScreen(),
    );
  }
}
