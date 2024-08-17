import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/login/view/widgets/widgets.dart';
import 'package:fooddelivery/router/app_router.gr.dart';

@RoutePage()
class LoginEmailView extends StatefulWidget {
  const LoginEmailView({super.key});

  @override
  State<LoginEmailView> createState() => _LoginEmailViewState();
}

class _LoginEmailViewState extends State<LoginEmailView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LoginHeader(
                      title: 'Login to Your account.',
                      subtitle: 'Please sign in to your account',
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Column(
                        children: [
                          const LoginTextField(
                            label: 'Email Address',
                            hintText: 'Enter Email',
                          ),
                          const LoginTextField(
                            label: 'Password',
                            hintText: 'Password',
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () async {
                                  final result = await context.router.push<
                                              bool>(
                                          const LoginForgotPasswordView()) ??
                                      false;
                                  if (!context.mounted) return;
                                  if (result) {
                                    await openModelForgotPassword(context);
                                  }
                                },
                                child: const Text('Forgot password?'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const LoginButton(label: 'Sign In'),
                    const LoginSingInWidth(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?"),
                        TextButton(
                          onPressed: () {
                            context.router.replace(const LoginCreateView());
                          },
                          style: TextButton.styleFrom(padding: EdgeInsets.zero),
                          child: const Text('Register'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> openModelForgotPassword(BuildContext context) async {
    final result = await showModalBottomSheet<bool>(
          context: context,
          builder: (context) {
            return ForgotPasswordModal(
              onContinuePressed: () {
                context.router.maybePop(true);
              },
            );
          },
        ) ??
        false;
    if (!context.mounted) return;
    if (result) {
      context.router.push(const LoginEmailVerificationView());
    }
  }
}
