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
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LoginHeader(
                      title: 'Login to Your account.',
                      subTitle:
                          'Create an account to start looking for the food you like',
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const LoginTextField(
                            label: 'Email Address',
                            hintText: 'Enter Email',
                          ),
                          const LoginTextField(
                            label: 'User name',
                            hintText: 'Enter user name',
                          ),
                          const LoginTextField(
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
                                    value: true,
                                    onChanged: (value) {},
                                  ),
                                ),
                                const Text(
                                  ' I Agree with ',
                                  style: TextStyle(color: Colors.black),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    'Terms of Services',
                                    style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ),
                                const Text(
                                  ' and ',
                                  style: TextStyle(color: Colors.black),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    'Privacy Policy',
                                    style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const LoginButton(label: 'Register'),
                          const LoginSingInWidth(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Have an account?"),
                              TextButton(
                                onPressed: () {
                                  context.router
                                      .replace(const LoginEmailView());
                                },
                                style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero),
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
            ],
          ),
        ),
      ),
    );
  }
}
