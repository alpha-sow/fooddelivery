import 'package:alpha_ui/alpha_ui.dart';
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
        Button(
          onPressed: onSkipPressed,
          child: const Text('Skip'),
        ),
        Button(
          onPressed: onNextPressed,
          child: const Row(
            children: [
              Text('next'),
              Icon(Icons.arrow_forward),
            ],
          ),
        ),
      ],
    );
  }
}
