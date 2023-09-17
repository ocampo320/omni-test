import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get theme {
    return ThemeData(
      primaryColor: Colors.blue,
      cardColor: Colors.redAccent,
      fontFamily: 'Roboto',
      textTheme:const  TextTheme(
        displayLarge: TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        displayMedium: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        bodyLarge: TextStyle(fontSize: 16, color: Colors.black),
        bodyMedium: TextStyle(fontSize: 14, color: Colors.white),
      ),
    );
  }
}
