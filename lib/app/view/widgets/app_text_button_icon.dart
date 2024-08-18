import 'package:flutter/material.dart';

class AppTextButtonIcon extends StatelessWidget {
  const AppTextButtonIcon({
    super.key,
    required this.label,
    required this.icon,
  });

  final Widget label;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Row(
        children: [
          label,
          icon,
        ],
      ),
    );
  }
}
