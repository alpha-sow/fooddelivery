import 'package:flutter/material.dart';
import 'package:fooddelivery/login/view/start-screen/widgets/welcome_indicator.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({
    super.key,
    this.bottom,
    this.index = 0,
  });

  final Widget? bottom;
  final int index;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      height: height * 0.5,
      child: Card(
        color: Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'We serve incomparable delicacies',
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                textAlign: TextAlign.center,
              ),
              Text(
                'All the best restaurants with their top menu waiting '
                'for you, they cant’t wait for your order!!',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              WelcomeIndicator(
                index: index,
                numberOfDot: 3,
              ),
              const Spacer(),
              if (bottom != null) bottom!,
            ],
          ),
        ),
      ),
    );
  }
}
