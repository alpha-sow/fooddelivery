import 'package:flutter/material.dart';
import 'package:fooddelivery/app/view/widgets/app_text_button_icon.dart';

class AppHeaderLocation extends StatelessWidget {
  const AppHeaderLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextButtonIcon(
          label: Text(
            'Your Location',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
          ),
        ),
        AppTextButtonIcon(
          label: const Icon(
            Icons.location_on_outlined,
            color: Colors.white,
          ),
          icon: Text(
            'New York City',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ],
    );
  }
}
