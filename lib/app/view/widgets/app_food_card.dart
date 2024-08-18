import 'package:flutter/material.dart';

class AppFoodCard extends StatelessWidget {
  const AppFoodCard({
    super.key,
    required this.image,
    required this.title,
    required this.rate,
    required this.distance,
    required this.price,
  });

  final String image;
  final String title;
  final String rate;
  final String distance;
  final String price;

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
                  image: AssetImage(image),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            Row(
              children: [
                Badge(
                  padding: const EdgeInsets.only(left: 10.0),
                  backgroundColor: Colors.transparent,
                  label: Text(rate),
                  textColor: Colors.black,
                  child: Icon(
                    Icons.star,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const Spacer(),
                Badge(
                  padding: const EdgeInsets.only(left: 10.0),
                  backgroundColor: Colors.transparent,
                  label: Text(distance),
                  textColor: Colors.black,
                  child: Icon(
                    Icons.location_on,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const Spacer(),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: Text(
                price,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
