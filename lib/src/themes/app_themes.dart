import 'package:flutter/material.dart';
import 'package:vagas_design_system/vagas_design_system.dart';

abstract class AppThemes {
  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      backgroundColor: AppColors.white,
      scaffoldBackgroundColor: AppColors.white,
      primaryColor: AppColors.greyBlue,
      cardColor: AppColors.white,
      shadowColor: AppColors.grey,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.greyBlue,
          disabledBackgroundColor: AppColors.grey,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          surfaceTintColor: AppColors.transparent,
          backgroundColor: AppColors.transparent,
          shadowColor: AppColors.transparent,
          disabledForegroundColor: AppColors.grey,
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColors.greyBlue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        disabledColor: AppColors.grey,
        textTheme: ButtonTextTheme.normal,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: AppColors.transparent,
          disabledForegroundColor: AppColors.grey,
          elevation: 0,
          foregroundColor: AppColors.lightGrey,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
      disabledColor: AppColors.grey,
      dividerColor: AppColors.grey,
      iconTheme: const IconThemeData(
        color: AppColors.lightGrey,
        size: 27,
      ),
      errorColor: AppColors.red,
      tooltipTheme: TooltipThemeData(
        preferBelow: true,
        textAlign: TextAlign.center,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        showDuration: const Duration(seconds: 5),
        waitDuration: const Duration(milliseconds: 400),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.white,
        ),
      ),
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
      textTheme: TextTheme(
        headlineLarge: GoogleFonts.lato(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        ),
        headlineMedium: GoogleFonts.lato(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        ),
        headlineSmall: GoogleFonts.lato(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        ),
        bodyLarge: GoogleFonts.lato(
          fontSize: 22,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        ),
        bodyMedium: GoogleFonts.lato(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        ),
        bodySmall: GoogleFonts.lato(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        ),
        displayLarge: GoogleFonts.lato(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: AppColors.black,
        ),
        displayMedium: GoogleFonts.lato(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: AppColors.black,
        ),
        displaySmall: GoogleFonts.lato(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: AppColors.black,
        ),
        labelLarge: GoogleFonts.lato(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: AppColors.black,
        ),
        labelMedium: GoogleFonts.lato(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: AppColors.black,
        ),
        labelSmall: GoogleFonts.lato(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: AppColors.black,
        ),
        titleLarge: GoogleFonts.lato(
          fontSize: 34,
          fontWeight: FontWeight.w700,
          color: AppColors.black,
        ),
        titleMedium: GoogleFonts.lato(
          fontSize: 29,
          fontWeight: FontWeight.w700,
          color: AppColors.black,
        ),
        titleSmall: GoogleFonts.lato(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: AppColors.black,
        ),
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      backgroundColor: AppColors.black,
      scaffoldBackgroundColor: AppColors.black,
      primaryColor: AppColors.greyBlue,
      cardColor: AppColors.white,
      shadowColor: AppColors.grey,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.greyBlue,
          disabledBackgroundColor: AppColors.grey,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          surfaceTintColor: AppColors.transparent,
          backgroundColor: AppColors.transparent,
          shadowColor: AppColors.transparent,
          disabledForegroundColor: AppColors.grey,
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColors.greyBlue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        disabledColor: AppColors.grey,
        textTheme: ButtonTextTheme.normal,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: AppColors.transparent,
          disabledForegroundColor: AppColors.grey,
          elevation: 0,
          foregroundColor: AppColors.accentBlue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
      disabledColor: AppColors.grey,
      dividerColor: AppColors.grey,
      iconTheme: const IconThemeData(
        color: AppColors.lightGrey,
        size: 27,
      ),
      errorColor: AppColors.red,
      tooltipTheme: TooltipThemeData(
        preferBelow: true,
        textAlign: TextAlign.center,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        showDuration: const Duration(seconds: 5),
        waitDuration: const Duration(milliseconds: 400),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.white,
        ),
      ),
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
      textTheme: TextTheme(
        headlineLarge: GoogleFonts.lato(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.white,
        ),
        headlineMedium: GoogleFonts.lato(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: AppColors.white,
        ),
        headlineSmall: GoogleFonts.lato(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: AppColors.white,
        ),
        bodyLarge: GoogleFonts.lato(
          fontSize: 22,
          fontWeight: FontWeight.w400,
          color: AppColors.white,
        ),
        bodyMedium: GoogleFonts.lato(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: AppColors.white,
        ),
        bodySmall: GoogleFonts.lato(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.white,
        ),
        displayLarge: GoogleFonts.lato(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: AppColors.white,
        ),
        displayMedium: GoogleFonts.lato(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: AppColors.white,
        ),
        displaySmall: GoogleFonts.lato(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: AppColors.white,
        ),
        labelLarge: GoogleFonts.lato(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: AppColors.white,
        ),
        labelMedium: GoogleFonts.lato(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: AppColors.white,
        ),
        labelSmall: GoogleFonts.lato(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: AppColors.white,
        ),
        titleLarge: GoogleFonts.lato(
          fontSize: 34,
          fontWeight: FontWeight.w700,
          color: AppColors.white,
        ),
        titleMedium: GoogleFonts.lato(
          fontSize: 29,
          fontWeight: FontWeight.w700,
          color: AppColors.white,
        ),
        titleSmall: GoogleFonts.lato(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: AppColors.white,
        ),
      ),
    );
  }
}
