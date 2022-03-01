import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primaryColor: Colors.deepPurple,
        appBarTheme: AppBarTheme(
            color: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            centerTitle: true,
            elevation: 0.0,
            foregroundColor: Colors.black),
      );
  static ThemeData dartTheme() => ThemeData(
        brightness: Brightness.dark,
      );
}
