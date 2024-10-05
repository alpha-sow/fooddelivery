import 'package:alpha_ui/alpha_ui.dart';
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
        body: SafeArea(
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 500),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: ListView(
                  children: const [
                    LoginHeader(
                      title: 'Forgot password?',
                      subtitle: 'Enter your email address and we’ll send you '
                          'confirmation code to reset your password',
                    ),
                    Input(
                      label: 'Email Address',
                      hintText: 'Enter Email',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomSheet: Container(
          color: Colors.white,
          constraints: const BoxConstraints(maxWidth: 500),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: SizedBox(
              width: double.infinity,
              child: Button(
                onPressed: () {
                  context.router.maybePop(true);
                },
                child: const Text('Continue'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
