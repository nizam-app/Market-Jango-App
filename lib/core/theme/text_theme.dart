import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_jango/core/constants/color_control/all_color.dart';

TextTheme get textTheme {
  return TextTheme(
    titleLarge: TextStyle(
      fontSize: 28.sp,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      letterSpacing: 1
    ),
    titleSmall: TextStyle(
      fontSize: 17.sp,
      fontWeight: FontWeight.w600,
      color: AllColor.green500
    ),
    headlineMedium: TextStyle(fontSize: 16, color: Colors.grey),


  );
}