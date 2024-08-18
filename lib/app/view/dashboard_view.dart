import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/router/app_router.gr.dart';

@RoutePage()
class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeView(),
        CartView(),
        ChatView(),
        AccountView(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'Cart',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded),
              label: 'Account',
              backgroundColor: Colors.white,
            ),
          ],
          selectedItemColor: Colors.amber[800],
          unselectedItemColor: Theme.of(context).colorScheme.secondary,
        );
      },
    );
  }
}
