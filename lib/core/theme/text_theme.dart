import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextTheme get textTheme {
  return TextTheme(
    titleLarge: TextStyle(
      fontSize: 28.sp,
      fontWeight: FontWeight.w500
    ),
    titleMedium: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      letterSpacing: 4
    ),
    titleSmall: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      letterSpacing: .4,
    ),
    headlineMedium: TextStyle(fontSize: 16, color: Colors.grey),
  );
}