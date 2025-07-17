import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:market_jango/core/widget/custom_auth_button.dart';
import 'package:market_jango/core/widget/sreeen_brackground.dart';
import 'package:market_jango/features/auth/screens/verification_screen.dart';
class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});
  static const String routeName = '/forgot_password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(child:
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  forgetUpperText(),
                  EmailBox()
                  // Add your input fields and buttons here
                ],
              ),
            ),
          ),
        ),),
    );
  }
}

class EmailBox extends StatelessWidget {
  const EmailBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Email Address',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
        ),
        SizedBox(height: 30.h,),
        CustomAuthButton(buttonText: "Submit", onTap: (){
          gotoNextScreen(context,);
        })
      ],
    );
  }
void gotoNextScreen(BuildContext context,) {
    context.push(VerificationScreen.routeName);
  }
}

class forgetUpperText extends StatelessWidget {
  const forgetUpperText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
     SizedBox(height: 190.h,),
    Text("Recover Password", style: Theme.of(context).textTheme.titleLarge,),
     SizedBox(height: 20.h,),
    Text("Enter the Email Address that you used when \n register to recover your password, You will receive a \n Verification code.", style: Theme.of(context).textTheme.titleMedium,textAlign: TextAlign.center,),
     SizedBox(height: 50.h,),],);
  }
}
