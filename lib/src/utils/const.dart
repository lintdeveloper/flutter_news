import 'package:flutter/material.dart';
class Constants{

  static String appName = "Encore News";

  //Colors for theme
  static Color lightPrimary = Color(0xfffcfcff);
  static Color lightAccent = Colors.blue;
  static Color darkAccent = Colors.blueAccent;
  static Color lightBG = Color(0xfffcfcff);
  static Color darkBG = Colors.black;
  static Color badgeColor = Colors.red;

  static ThemeData themeData = ThemeData(
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    accentColor:  lightAccent,
    cursorColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        title: TextStyle(
          color: darkBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );

  static const String BASE_URL = 'http://newsapi.org/v2';
  static const String API_KEY = '4171bcf2cdb341b0b55b619278c1ac25';
}