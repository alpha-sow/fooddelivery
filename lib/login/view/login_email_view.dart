import 'package:alpha_ui/alpha_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/login/view/widgets/widgets.dart';
import 'package:fooddelivery/router/app_router.gr.dart';

@RoutePage()
class LoginEmailView extends StatelessWidget {
  const LoginEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 500),
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
                              const Input(
                                label: 'Email Address',
                                hintText: 'Enter Email',
                              ),
                              const Input(
                                label: 'Password',
                                hintText: 'Password',
                                type: Type.password,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Button(
                                    variant: Variant.link,
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
                        SizedBox(
                          width: double.infinity,
                          child: Button(
                            child: const Text('Sign In'),
                            onPressed: () {
                              context.router.replace(const DashboardView());
                            },
                          ),
                        ),
                        const LoginSingInWidth(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Flexible(
                              child: Text("Don't have an account? "),
                            ),
                            Button(
                              variant: Variant.link,
                              onPressed: () {
                                context.router.replace(const LoginCreateView());
                              },
                              child: const Text('Register'),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
