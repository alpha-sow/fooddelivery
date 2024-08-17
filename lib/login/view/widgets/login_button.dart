import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          backgroundColor: Theme.of(context).colorScheme.primary,
          padding: const EdgeInsets.symmetric(vertical: 20),
        ),
        child: const Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
