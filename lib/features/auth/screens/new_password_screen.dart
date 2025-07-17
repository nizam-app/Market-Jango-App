import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_jango/core/widget/custom_auth_button.dart' show CustomAuthButton;
import 'package:market_jango/core/widget/sreeen_brackground.dart';
class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});
  static const String routeName = '/new_password_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(child:SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w),
          child: Center(
            child: Column(
              children: [
                NewPasswordTupperTest(),
                TextBox()
              ],
            ),
          ),
        ),
      )),
    );
  }
}

class TextBox extends StatelessWidget {
  const TextBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50.h,),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'New Password',
            suffixIcon: Icon(Icons.visibility_off_outlined)
          ),
          obscureText: true,
        ),
        SizedBox(height: 30.h,),
        TextFormField(
          decoration: InputDecoration(
              hintText: 'Confirm Password',
              suffixIcon: Icon(Icons.visibility_off_outlined)
          ),
          obscureText: true,
        ),
        SizedBox(height: 30.h,),
        CustomAuthButton(buttonText: "Save", onTap: (){goToNextScreen(context);}),
      ],
    );
  }
  void goToNextScreen(BuildContext context) {
    print("New password saved successfully!");
  }
}

class NewPasswordTupperTest extends StatelessWidget {
  const NewPasswordTupperTest({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SizedBox(height: 190.h),
        Text(
          'Create New Password',
          style: Theme.of(context).textTheme.titleLarge,
        ),
         SizedBox(height: 30.h),
        Text(
          'Type and confirm a secure new password for your amount',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize:11.sp)
        ),
      ],
    );
  }
}
