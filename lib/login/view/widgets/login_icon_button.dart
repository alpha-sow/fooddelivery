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
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: child,
        ),
      ),
    );
  }
}
