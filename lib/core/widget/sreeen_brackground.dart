import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market_jango/core/constants/image_control/image_path.dart';

class ScreenBackground extends StatelessWidget {
  const ScreenBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          width: double.maxFinite,
          height: double.maxFinite,
          ImagePath.authBackground,
          fit: BoxFit.cover,
        ),
        SafeArea(child: child),
      ],
    );
  }
}