import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/login/view/widgets/widgets.dart';
import 'package:fooddelivery/router/app_router.gr.dart';

@RoutePage()
class LoginEmailVerificationView extends StatelessWidget {
  const LoginEmailVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'OTP',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 500),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  LoginHeader(
                    title: 'Email verification',
                    subtitle: 'Enter the verification code we send you '
                        'on: Alberts******@gmail.com',
                  ),
                  VerificationCode(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Didn't receive code ?"),
                      LoginTextButton(label: ' Resend'),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.watch_later_outlined, size: 20),
                        Text(' 09:00 '),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
        bottomSheet: Container(
          constraints: const BoxConstraints(maxWidth: 500),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: LoginButton(
              label: 'Continue',
              onPressed: () {
                context.router.replace(const LoginResetPasswordView());
              },
            ),
          ),
        ),
      ),
    );
  }
}
