
import 'package:flutter/material.dart';

import 'AppColor.dart';
import 'AppStyle.dart';
import 'package:flutter/material.dart';
import 'AppColor.dart';
import 'AppStyle.dart';

class MyAppTheme {
  static final ThemeData lightTheme = ThemeData(
      primaryColor: AppColors.whiteLight,
      scaffoldBackgroundColor: AppColors.whiteLight,
      splashColor: AppColors.blackColor,
      textTheme: TextTheme(
          labelLarge: AppStyle.bold16Black,
          labelMedium: AppStyle.medium14black,
          labelSmall: AppStyle.medium12gray,
          headlineMedium: AppStyle.medium24Black,
          headlineLarge: AppStyle.medium20Black
      ),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: AppColors.whiteLight,
        iconTheme: IconThemeData(color: AppColors.blackColor),
      )
  );

  static final ThemeData darkTheme = ThemeData(
      primaryColor: AppColors.blackColor,
      scaffoldBackgroundColor: AppColors.blackColor,
      splashColor: AppColors.whiteLight,
      textTheme: TextTheme(
          labelLarge: AppStyle.bold16White,
          labelMedium: AppStyle.medium14White,
          labelSmall: AppStyle.medium12gray,
          headlineMedium: AppStyle.medium24White,
          headlineLarge: AppStyle.medium20White
      ),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: AppColors.blackColor,
        iconTheme: IconThemeData(color: AppColors.whiteLight),
      )
  );
}