import 'package:alpha_ui/alpha_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/login/view/widgets/widgets.dart';
import 'package:fooddelivery/router/app_router.gr.dart';

@RoutePage()
class LoginCreateView extends StatelessWidget {
  const LoginCreateView({super.key});

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
                          title: 'Create your new account',
                          subtitle:
                              'Create an account to start looking for the food you like',
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Input(
                                label: 'Email Address',
                                hintText: 'Enter Email',
                              ),
                              const Input(
                                label: 'User name',
                                hintText: 'Enter user name',
                              ),
                              const Input(
                                label: 'Password',
                                hintText: 'Password',
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20.0),
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 24.0,
                                      width: 24.0,
                                      child: Checkbox(
                                        value: false,
                                        onChanged: (value) {},
                                      ),
                                    ),
                                    const Text(
                                      ' I Agree with ',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Button(
                                      variant: Variant.link,
                                      onPressed: () {},
                                      child: const Text('Terms of Services'),
                                    ),
                                    const Text(
                                      ' and ',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Button(
                                      variant: Variant.link,
                                      onPressed: () {},
                                      child: const Text('Privacy Policy'),
                                    ),
                                  ],
                                ),
                              ),
                              Button(
                                onPressed: () {},
                                child: const Text('Register'),
                              ),
                              const LoginSingInWidth(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Flexible(
                                    child: Text("Have an account? "),
                                  ),
                                  Button(
                                    variant: Variant.link,
                                    child: const Text('Sign In'),
                                    onPressed: () {
                                      context.router
                                          .replace(const LoginEmailView());
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
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
}
