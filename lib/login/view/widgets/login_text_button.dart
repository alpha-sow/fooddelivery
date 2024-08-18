import 'package:flutter/material.dart';

class LoginTextButton extends StatelessWidget {
  const LoginTextButton({super.key, this.onPressed, this.label});

  final String? label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: onPressed,
        child: Text(
          label ?? '',
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
