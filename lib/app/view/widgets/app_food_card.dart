import 'package:flutter/material.dart';
import 'package:fooddelivery/assets/assets.gen.dart';

class AppFoodCard extends StatelessWidget {
  const AppFoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: .1,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 110,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(Assets.images.bgScreen1.path),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                'Ordinary Burgers',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            const Row(
              children: [
                Text('4.9'),
                Spacer(),
                Text('190m'),
              ],
            ),
            const SizedBox(
              width: double.infinity,
              child: Text(
                '\$17,230',
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
