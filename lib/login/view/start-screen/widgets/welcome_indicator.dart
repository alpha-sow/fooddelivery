import 'package:flutter/material.dart';

class WelcomeIndicator extends StatelessWidget {
  const WelcomeIndicator({super.key, this.index = 0, this.numberOfDot = 2});

  final int index;
  final int numberOfDot;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < numberOfDot; i++)
                _Dot(indexValue: i, index: index),
            ],
          ),
        ),
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  const _Dot({required this.indexValue, this.index = 0});

  final int indexValue;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: Container(
        width: 25,
        height: 8,
        decoration: BoxDecoration(
          color: indexValue == index ? Colors.white : Colors.white60,
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
