import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    brightness: Brightness.dark,
colorScheme:const ColorScheme.light(
    brightness :Brightness.light,
    onSecondary : Colors.black,
  error :  Color(0xffb00020),
    onError : Colors.white,
       background : Colors.white,
     onBackground : Colors.black,
     surface = Colors.white,   Color onSurface = Colors.black,   Color? surfaceVariant,   Color? onSurfaceVariant,   Color? outline,   Color? outlineVariant,   Color? shadow,   Color? scrim,   Color? inverseSurface,   Color? onInverseSurface,   Color? inversePrimary,   Color? surfaceTint,   Color? primaryVariant = const Color(0xff3700b3),   Color? secondaryVariant = const Color(0xff018786)
)  ,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    backgroundColor: Colors.white,
    buttonColor: Colors.cyan,
    bottomAppBarColor: Colors.cyan,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.cyan,
      textTheme: ButtonTextTheme.primary,
    ),
  );
  static final dark = ThemeData.dark().copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    backgroundColor: Colors.black,
    buttonColor: Colors.deepPurple,
    bottomAppBarColor: Colors.deepPurple,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.deepPurple,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
