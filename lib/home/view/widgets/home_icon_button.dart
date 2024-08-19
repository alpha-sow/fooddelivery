import 'package:flutter/material.dart';

class HomeIconButton extends StatelessWidget {
  const HomeIconButton({
    super.key,
    required this.icon,
    this.onPressed,
    this.borderColor,
    this.showBorder = true,
    this.backgroundColor,
  });

  final Widget icon;
  final void Function()? onPressed;
  final Color? borderColor;
  final Color? backgroundColor;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          border: showBorder
              ? Border.all(
                  color: borderColor ?? Colors.white,
                  width: 1,
                )
              : null,
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
