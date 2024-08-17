import 'package:flutter/material.dart';

class LoginIconButton extends StatelessWidget {
  const LoginIconButton({
    super.key,
    required this.child,
    this.onPressed,
  });

  final Widget child;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Ink(
        decoration: ShapeDecoration(
          shape: CircleBorder(
            side: BorderSide(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: child,
        ),
      ),
    );
  }
}
