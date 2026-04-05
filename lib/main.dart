import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:news/home/HomeScreen.dart';
import 'package:news/utils/AppRoute.dart';
import 'package:news/utils/MyAppTheme.dart';
import 'Provider/ThemeProvider.dart';
import 'Screen/Splash_Screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SettingsProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.splash,
      routes: {
        AppRoute.splash: (context) => SplashScreen(),
        AppRoute.homeRouteName: (context) => const Homescreen()
      },

      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      themeMode: settingsProvider.currentTheme,


    );
  }
}