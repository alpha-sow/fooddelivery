import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.icon,
    this.onPressed,
    this.backgroundColor,
  });

  final Widget icon;
  final void Function()? onPressed;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: backgroundColor ?? Colors.white,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: icon,
        ),
      ),
    );
  }
}
