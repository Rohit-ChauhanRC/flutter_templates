import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils_export.dart';
import 'dimens.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get theme {
    final themeData = ThemeData.light();
    final textTheme = themeData.textTheme;

    final bodyText2 = textTheme.bodyText2.copyWith(
      color: AppColors.kPrimaryColor,
      fontSize: Dimens.fontSize18,
      fontWeight: FontWeight.w700,
    );

    return ThemeData(
      fontFamily: GoogleFonts.nunito().fontFamily,
      brightness: Brightness.light,
      primaryColor: AppColors.kPrimaryColor,
      accentColor: AppColors.kPrimaryColor,
      buttonColor: AppColors.kPrimaryColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: AppBarTheme(
        color: AppColors.kPrimaryColor,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColors.kPrimaryColor,
        height: 45.h,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        elevation: 4,
        backgroundColor: AppColors.kPrimaryColor,
      ),
      primaryTextTheme: textTheme.copyWith(
        bodyText2: bodyText2,
      ),
      textTheme: TextTheme(
        subtitle1: AppTextStyle.regularStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        prefixStyle: AppTextStyle.regularStyle(),
        hintStyle: AppTextStyle.regularStyle(
          color: Colors.grey[700],
          fontSize: 12.sp,
        ),
        contentPadding: const EdgeInsets.all(10),
        labelStyle: TextStyle(
          fontSize: Dimens.fontSize12,
          // color: AppColors.kPrimaryColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: AppColors.kSecondaryColor,
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: AppColors.kPrimaryColor,
            width: 1.5,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Colors.red[700],
            width: 1.5,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white,
      ),
      // indicatorColor: AppColors.kPrimaryColor,
    );
  }
}
