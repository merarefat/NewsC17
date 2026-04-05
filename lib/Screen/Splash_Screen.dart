import 'dart:async';
import 'package:flutter/material.dart';
import 'package:news/utils/AppRoute.dart';
import '../generated/assets.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, AppRoute.homeRouteName);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 3),
            Image.asset(
              isDarkMode ? AppAssent.micro : AppAssent.micro_Dark,
              height: 200,
            ),
            const Spacer(flex: 2),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  Image.asset(AppAssent.Route, height: 50),
                  const SizedBox(height: 8),
                  Text(
                    "Supervised by Mohamed Nabil",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
