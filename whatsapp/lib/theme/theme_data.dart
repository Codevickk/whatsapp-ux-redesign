import 'package:flutter/material.dart';

ThemeData themeData() {
  return ThemeData(
      accentColor: Colors.green,
      textTheme: TextTheme(
          headline1: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              wordSpacing: 2.0),
          subtitle1: TextStyle(color: Colors.grey[800])),
      iconTheme: IconThemeData(color: Colors.grey[800]),
      appBarTheme: AppBarTheme(color: Colors.grey[200], elevation: 0.0));
}
