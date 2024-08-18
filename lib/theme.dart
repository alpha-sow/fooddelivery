import 'package:flutter/material.dart';

final theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.orange,
    primary: Colors.orange,
    secondary: Colors.grey,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
  ),
  scaffoldBackgroundColor: Colors.white,
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: Colors.white,
  ),
  useMaterial3: true,
);
