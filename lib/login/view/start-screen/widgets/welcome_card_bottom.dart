import 'package:flutter/material.dart';

class WelcomeCardBottom extends StatelessWidget {
  const WelcomeCardBottom({super.key, this.onSkipPressed, this.onNextPressed});

  final void Function()? onSkipPressed;
  final void Function()? onNextPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: onSkipPressed,
          child: const Text(
            'Skip',
            style: TextStyle(color: Colors.white),
          ),
        ),
        TextButton.icon(
          onPressed: onNextPressed,
          label: const Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
          icon: const Text(
            'Next',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
