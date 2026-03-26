import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/utils/AppColor.dart';

class Appstyle {
  static TextStyle medium20White = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.whiteLight
  );
  static TextStyle medium20Black = GoogleFonts.inter(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: AppColors.blackColor
  );
  static TextStyle medium14White = GoogleFonts.inter(
      fontSize:14,
      fontWeight: FontWeight.w500,
      color: AppColors.whiteLight
  );
  static TextStyle medium14black = GoogleFonts.inter(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.blackColor
  );
  static TextStyle medium24White = GoogleFonts.inter(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: AppColors.whiteLight
  );
  static TextStyle medium24Black = GoogleFonts.inter(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: AppColors.blackColor
  );
  static TextStyle bold16Black = GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: AppColors.blackColor
  );
  static TextStyle bold16With = GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: AppColors.whiteLight
  );
  static TextStyle medium12gray = GoogleFonts.inter(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColors.grayColor
  );

}