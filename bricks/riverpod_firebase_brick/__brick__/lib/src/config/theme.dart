import 'package:flutter/material.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/config/palette.dart';

ThemeData get lightTheme => ThemeData(
    brightness: Brightness.light,
    primarySwatch: MaterialColor(powyBlue.value, powyBlueMap),
    appBarTheme: const AppBarTheme(backgroundColor: background),
    primaryColor: background,
    primaryColorLight: backgroundLight,
    primaryColorDark: backgroundDark,
    canvasColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    bottomAppBarColor: background,
    cardColor: Colors.white,
    cardTheme: CardTheme(
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        )),
    indicatorColor: powyBlue,
    errorColor: errorColor,
    toggleableActiveColor: powyBlue,
    colorScheme: const ColorScheme.light()
        .copyWith(secondary: powyBlue, primary: powyBlue));
ThemeData get darkTheme => ThemeData(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(backgroundColor: background),
    primaryColor: background,
    primaryColorLight: backgroundLight,
    primaryColorDark: backgroundDark,
    canvasColor: backgroundLight,
    scaffoldBackgroundColor: backgroundLight,
    bottomAppBarColor: background,
    cardColor: background,
    cardTheme: CardTheme(
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        )),
    indicatorColor: powyBlue,
    errorColor: errorColor,
    toggleableActiveColor: powyBlue,
    colorScheme: const ColorScheme.dark()
        .copyWith(secondary: powyBlue, primary: powyBlue));
