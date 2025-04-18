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
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: tertiaryColor),
      bodyMedium: TextStyle(color: tertiaryColor),
    ),
  );
}
