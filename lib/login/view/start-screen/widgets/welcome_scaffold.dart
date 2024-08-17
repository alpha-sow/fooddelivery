import 'package:flutter/material.dart';

class WelcomeScaffold extends StatelessWidget {
  const WelcomeScaffold({
    super.key,
    required this.child,
    required this.backGroundImage,
  });

  final Widget child;
  final String backGroundImage;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(backGroundImage),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [child],
            ),
          ),
        ),
      ),
    );
  }
}
