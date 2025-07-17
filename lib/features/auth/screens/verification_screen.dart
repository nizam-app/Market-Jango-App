import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:market_jango/core/widget/custom_auth_button.dart';
import 'package:market_jango/core/widget/sreeen_brackground.dart';
import 'package:pinput/pinput.dart';

import 'new_password_screen.dart';
class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});
  static const String routeName = '/verification_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:ScreenBackground(child: SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: Center(
          child: Column(
            children: [
              VerifiUpperText(),
              OTPPin(),
              CustomAuthButton(buttonText: "Verify", onTap: (){gotoNextScreen(context);},),
      
      
            ],
          ),
        ),
      ),
    ),),);
  }
  void gotoNextScreen(BuildContext context) {
    context.push(NewPasswordScreen.routeName);
  }
}

class OTPPin extends StatelessWidget {
  const OTPPin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50.h,
              ),
              Directionality(// Specify direction if desired
                textDirection: TextDirection.ltr,
                child: Pinput(
                  // You can pass your own SmsRetriever implementation based on any package
                  // in this example we are using the SmartAuth
                  separatorBuilder: (index) =>  SizedBox(width: 12.w),
                  hapticFeedbackType: HapticFeedbackType.lightImpact,
                  onCompleted: (pin) {
                    debugPrint('onCompleted: $pin');
                  },
                  onChanged: (value) {
                    debugPrint('onChanged: $value');
                  },
                  cursor: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 9),
                        width: 22,
                        height: 1,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
      ],
    );
  }
}

class VerifiUpperText extends StatelessWidget {
  const VerifiUpperText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
    
      children: [
         SizedBox(height: 190.h,),
        Text("Verification",style: Theme.of(context).textTheme.titleLarge,),
         SizedBox(height: 20.h,),
        Text("We sent Verification code to your Email address",style: Theme.of(context).textTheme.titleMedium,),
      ],
    );
  }
}
