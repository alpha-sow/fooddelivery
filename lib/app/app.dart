import 'package:flutter/material.dart';
import 'package:fooddelivery/router/app_router.dart';
import 'package:fooddelivery/theme.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: theme,
      routerConfig: _appRouter.config(),
    );
  }
}
