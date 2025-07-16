import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 152.h,),
            Center(child: Text("Login Here",style:textTheme.titleLarge,)),
            SizedBox(height: 36.h,),
            Center(child: Text("Welcome back you've \n been missed!",style:textTheme.titleMedium,))
          ],
        ),
      ),
    );

  }
}
