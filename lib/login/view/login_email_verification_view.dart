import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/login/view/widgets/widgets.dart';

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
                  _VerificationCode(),
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
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}

class _VerificationCode extends StatelessWidget {
  const _VerificationCode();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _VerificationInput(),
        _VerificationInput(),
        _VerificationInput(),
        _VerificationInput(),
      ],
    );
  }
}

class _VerificationInput extends StatelessWidget {
  const _VerificationInput();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: TextField(
        maxLength: 1,
        showCursor: false,
        keyboardType: TextInputType.number,
        style: Theme.of(context).textTheme.headlineLarge,
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          counter: Offstage(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}
