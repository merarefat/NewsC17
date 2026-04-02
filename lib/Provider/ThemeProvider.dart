import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.dark;
  String currentLanguage = 'en';

  void changeTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  void changeLanguage(String newLang) {
    if (currentLanguage == newLang) return;
    currentLanguage = newLang;
    notifyListeners();
  }
}