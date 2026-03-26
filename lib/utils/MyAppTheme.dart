
import 'package:flutter/material.dart';

import 'AppColor.dart';
import 'AppStyle.dart';

class MyAppTheme {
 static final ThemeData lightTheme =ThemeData(

   primaryColor: AppColors.whiteLight,
   splashColor: AppColors.blackColor,
   scaffoldBackgroundColor: AppColors.whiteLight,
   textTheme: TextTheme(
     labelLarge:  Appstyle.bold16Black,
     labelMedium:  Appstyle.medium14black,
     labelSmall:  Appstyle.medium12gray,
     headlineMedium:   Appstyle.medium24Black,
     headlineLarge: Appstyle.medium20Black
   ),
     appBarTheme: AppBarTheme(
       centerTitle: true,
       backgroundColor: AppColors.whiteLight,
       iconTheme: IconThemeData(color: AppColors.blackColor),
     )
 );
 static final ThemeData darkTheme =ThemeData(

     primaryColor: AppColors.blackColor,
     splashColor: AppColors.whiteLight,
     scaffoldBackgroundColor: AppColors.blackColor,
     textTheme: TextTheme(
         labelLarge:  Appstyle.bold16With,
         labelMedium:  Appstyle.medium14White,
         labelSmall:  Appstyle.medium12gray,
         headlineMedium:   Appstyle.medium24White,
         headlineLarge: Appstyle.medium20White
     ),
   appBarTheme: AppBarTheme(
     centerTitle: true,
     backgroundColor: AppColors.blackColor,
     iconTheme: IconThemeData(color: AppColors.whiteLight),
   )
 );

}