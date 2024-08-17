import 'package:flutter/material.dart';

class LoginDivider extends StatelessWidget {
  const LoginDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _Separator(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text('Or sign in with'),
          ),
          _Separator(),
        ],
      ),
    );
  }
}

class _Separator extends StatelessWidget {
  const _Separator();

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: SizedBox(
        child: Divider(),
      ),
    );
  }
}
