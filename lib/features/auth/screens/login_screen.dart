import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:market_jango/core/constants/color_control/all_color.dart';
import 'package:market_jango/core/widget/custom_auth_button.dart';
import 'package:market_jango/core/widget/sreeen_brackground.dart';

import 'forgot_password_screen.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const String routeName = '/loginScreen';

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                LoginHereText(),
                LoginTextFormField(),
                LoginBotton()
          
          
              ],
            ),
          ),
        ),
      ),
    );

  }
}

class LoginBotton extends StatelessWidget {
  const LoginBotton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30.h,),
        InkWell(
          onTap: () {
            goToForgotPasswordScreen(context);
          },
            child: Text("Forgot your Password?",style: Theme.of(context).textTheme.titleSmall,)),
        SizedBox(height: 30.h,),
       CustomAuthButton(buttonText:"Login",onTap: (){
         loginDone();
         },),
        SizedBox(height: 50.h,),
        Text.rich(
          TextSpan(
            text: "Don't have an account? ",
            style: Theme.of(context).textTheme.titleSmall,
            children: [
              TextSpan(
                text: "Sign up",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: AllColor.loginButtonColor,
                  fontWeight: FontWeight.w300,),
                onEnter: (_){
                  goToSignUpScreen(context);
                }
              ),
            ],
          ),
        ),
    
      ],
    );
  }
void loginDone() {}

void goToForgotPasswordScreen(BuildContext context) {
  context.push(ForgotPasswordScreen.routeName);}

  void goToSignUpScreen(BuildContext context) {
    context.push('');
  }

}



class LoginTextFormField extends StatelessWidget {
  const LoginTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    
    
    SizedBox(height: 28.h,),
    TextFormField(
      decoration: InputDecoration(
        hintText: "Email or Phone number",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
    ),
    SizedBox(height: 29.h,),
    TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
      ),
    )

      ],
    );
  }
}

class LoginHereText extends StatelessWidget {
  const LoginHereText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
    
    
    SizedBox(height: 120.h,),
    Center(child: Text("Login Here",style:textTheme.titleLarge,)),
    SizedBox(height: 12.h,),
    Center(child: Text("Welcome back you've \n been missed!",style:textTheme.titleMedium,textAlign: TextAlign.center,))
      ],
    );
  }
}
