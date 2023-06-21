import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_styles.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      brightness: Brightness.light,
      primary: AppStyles.primaryColor,
      onPrimary: AppStyles.whiteColor,
      secondary: Color(0xff03dac6),
      onSecondary: AppStyles.blackColor,
      error: Color(0xffb00020),
      onError: AppStyles.whiteColor,
      background: AppStyles.whiteColor,
      onBackground: AppStyles.blackColor,
      surface: AppStyles.whiteColor,
      onSurface: AppStyles.blackColor,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.blue,
      textTheme: ButtonTextTheme.accent,
    ),
  );
  static final dark = ThemeData.dark().copyWith(
    backgroundColor: Colors.black,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.deepPurple,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
