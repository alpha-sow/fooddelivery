import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/assets/assets.gen.dart';
import 'package:fooddelivery/login/view/start-screen/widgets/widgets.dart';
import 'package:fooddelivery/router/app_router.gr.dart';

@RoutePage()
class WelcomeFirstView extends StatelessWidget {
  const WelcomeFirstView({super.key});

  @override
  Widget build(BuildContext context) {
    return WelcomeScaffold(
      backGroundImage: Assets.images.bgScreen1.path,
      child: WelcomeCard(
        bottom: WelcomeCardBottom(
          onNextPressed: () {
            context.router.replace(const WelcomeSecondView());
          },
        ),
      ),
    );
  }
}
