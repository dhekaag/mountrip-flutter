import 'package:flutter/material.dart';
import 'package:mountrip/app/core/constant/color.dart';

class AppTheme {
  AppTheme._();

  static String appName = "Mountrip";
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      iconTheme: IconThemeData(color: tertiaryColor),
      titleTextStyle: TextStyle(color: tertiaryColor, fontSize: 20),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: primaryColor.withAlpha(20),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        minimumSize: const Size(40, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: tertiaryColor,
      ),
      displayMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: tertiaryColor,
      ),
      displaySmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: tertiaryColor,
      ),
      headlineLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: tertiaryColor,
      ),
      headlineMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: tertiaryColor,
      ),
      headlineSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: tertiaryColor,
      ),
      titleLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: tertiaryColor,
      ),
      titleMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: tertiaryColor,
      ),
      titleSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: tertiaryColor,
      ),
      labelLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: tertiaryColor,
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: tertiaryColor,
      ),
      labelSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: tertiaryColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: tertiaryColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: tertiaryColor,
      ),
      bodySmall: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: tertiaryColor,
      ),
    ),
  );
}
