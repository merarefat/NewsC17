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
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.splash,
      routes: {
        AppRoute.splash: (context) => SplashScreen(),
        AppRoute.homeRouteName: (context) => Homescreen()
      },
      // هنا الإصلاح: نربط الـ Provider بالـ MaterialApp
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      themeMode: themeProvider.currentTheme,
    );
  }
}