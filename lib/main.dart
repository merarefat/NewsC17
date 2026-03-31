import 'package:flutter/material.dart';
import 'package:news/home/HomeScreen.dart';
import 'package:news/utils/AppRoute.dart';
import 'package:news/utils/MyAppTheme.dart';

import 'Screen/Splash_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.splash,
      routes: {
        AppRoute.splash: (context) => SplashScreen(),
        AppRoute.homeRouteName: (context) => Homescreen()
      },
      theme:MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
