import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/assets/assets.gen.dart';
import 'package:fooddelivery/login/view/start-screen/widgets/widgets.dart';
import 'package:fooddelivery/router/app_router.gr.dart';

@RoutePage()
class WelcomeThirdView extends StatelessWidget {
  const WelcomeThirdView({super.key});

  @override
  Widget build(BuildContext context) {
    return WelcomeScaffold(
      backGroundImage: Assets.images.bgScreen2.path,
      child: WelcomeCard(
        index: 2,
        bottom: IconButton(
          onPressed: () {
            context.router.replace(const LoginEmailView());
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(20),
          ),
          icon: Icon(
            Icons.arrow_forward,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
