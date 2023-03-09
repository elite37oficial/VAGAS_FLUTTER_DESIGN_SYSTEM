import 'package:flutter/material.dart';
import 'package:vagas_design_system/src/themes/app_colors.dart';

abstract class AppThemes {
  static ThemeData lightTheme() {
    return ThemeData(
      backgroundColor: AppColors.white,
      scaffoldBackgroundColor: AppColors.white,
      primaryColor: AppColors.greyBlue,
      cardColor: AppColors.white,
      shadowColor: AppColors.grey,
      colorScheme: const ColorScheme(
        background: AppColors.white,
        onBackground: AppColors.white,
        brightness: Brightness.light,
        primary: AppColors.greyBlue,
        onPrimary: AppColors.blue,
        secondary: AppColors.accentBlue,
        onSecondary: AppColors.blue,
        surface: AppColors.greyBlue,
        onSurface: AppColors.accentBlue,
        error: AppColors.red,
        onError: AppColors.red,
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      backgroundColor: AppColors.black,
      scaffoldBackgroundColor: AppColors.black,
      primaryColor: AppColors.greyBlue,
      cardColor: AppColors.white,
      shadowColor: AppColors.grey,
      colorScheme: const ColorScheme(
        background: AppColors.black,
        onBackground: AppColors.white,
        brightness: Brightness.dark,
        primary: AppColors.greyBlue,
        onPrimary: AppColors.blue,
        secondary: AppColors.accentBlue,
        onSecondary: AppColors.blue,
        surface: AppColors.greyBlue,
        onSurface: AppColors.accentBlue,
        error: AppColors.red,
        onError: AppColors.red,
      ),
    );
  }
}
