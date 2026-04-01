import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  /// data
  /// change data
  ///
  ThemeMode currentTheme = ThemeMode.light;

  void toggleTheme(ThemeMode theme) {
    currentTheme = theme;
    notifyListeners();
  }
}
