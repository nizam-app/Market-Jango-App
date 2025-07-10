import 'package:flutter/material.dart';

TextTheme get textTheme {
  return TextTheme(
    titleLarge: TextStyle(
      color: Colors.black,
      fontSize: 40,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      letterSpacing: .4,
    ),
    titleSmall: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      letterSpacing: .4,
    ),
    headlineMedium: TextStyle(fontSize: 16, color: Colors.grey),
  );
}