import 'package:flutter/material.dart';

class HomeTextButtonIcon extends StatelessWidget {
  const HomeTextButtonIcon({
    super.key,
    required this.label,
    required this.icon,
    this.onPressed,
  });

  final Widget label;
  final Widget icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(50),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            label,
            icon,
          ],
        ),
      ),
    );
  }
}
