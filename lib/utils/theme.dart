import 'package:flutter/material.dart';
class AppTheme {
  static ThemeData appTheme = ThemeData(
    primaryColor: Colors.red,
    scaffoldBackgroundColor: Colors.blue.shade100,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.indigo,
    ),
    appBarTheme: AppBarTheme(backgroundColor: Colors.green),
    textTheme: TextTheme(
      headline1: TextStyle(
          fontSize: 36, fontWeight: FontWeight.w900, color: Colors.black),
      subtitle1: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w900, color: Colors.indigo),
    ),
  );
}
