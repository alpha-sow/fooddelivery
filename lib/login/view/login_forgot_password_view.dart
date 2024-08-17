import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/login/view/widgets/widgets.dart';

@RoutePage()
class LoginForgotPasswordView extends StatelessWidget {
  const LoginForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.all(25.0),
            child: Column(
              children: [
                LoginHeader(
                  title: 'Forgot password?',
                  subTitle: 'Enter your email address and we’ll send you '
                      'confirmation code to reset your password',
                ),
                LoginTextField(
                  label: 'Email Address',
                  hintText: 'Enter Email',
                ),
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          color: Colors.white,
          child: const Padding(
            padding: EdgeInsets.all(25.0),
            child: LoginButton(
              label: 'Continue',
            ),
          ),
        ),
      ),
    );
  }
}
