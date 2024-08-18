import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/login/view/widgets/widgets.dart';

@RoutePage()
class LoginResetPasswordView extends StatelessWidget {
  const LoginResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Reset Password',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 500),
              child: ListView(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        LoginHeader(
                          title: 'Reset Password',
                          subtitle:
                              'Your new password must be different from the previously used password',
                        ),
                        LoginTextField(
                          label: 'New Password',
                          hintText: 'New Password',
                          helper: 'Must be at least 8 character',
                        ),
                        LoginTextField(
                          label: 'Confirm Password',
                          hintText: 'Confirm Password',
                          helper: 'Both password must match',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 100)
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
              label: 'Confirm',
              onPressed: () async {
                await openModelForgotPassword(context);
              },
            ),
          ),
        ),
      ),
    );
  }

  Future<void> openModelForgotPassword(BuildContext context) async {
    await showModalBottomSheet<bool>(
      isDismissible: false,
      context: context,
      builder: (context) {
        return ConfirmPasswordResetModal(
          onPressed: () {
            context.router.popUntilRoot();
          },
        );
      },
    );
  }
}
