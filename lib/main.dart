import 'package:alpha_ui/alpha_ui.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/app/app.dart';

void main() {
  ThemeUI.set(
    theme: const ThemeUI(
      primary: Colors.orange,
      secondary: Colors.grey,
      radius: 6.0,
    ),
  );
  runApp(App());
}
