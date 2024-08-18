import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/app/view/widgets/widgets.dart';
import 'package:fooddelivery/assets/assets.gen.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(160),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(Assets.images.dashboardHeader.path),
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Your Location',
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'New York City',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          AppIconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search_rounded,
                              color: Colors.white,
                            ),
                          ),
                          AppIconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.notifications_none_rounded,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Provide the best',
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      Text(
                        'food for you',
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: const [],
      ),
    );
  }
}
