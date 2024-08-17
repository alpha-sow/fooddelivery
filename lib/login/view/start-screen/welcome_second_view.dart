import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/assets/assets.gen.dart';
import 'package:fooddelivery/login/view/start-screen/widgets/widgets.dart';
import 'package:fooddelivery/router/app_router.gr.dart';

@RoutePage()
class WelcomeSecondView extends StatelessWidget {
  const WelcomeSecondView({super.key});

  @override
  Widget build(BuildContext context) {
    return WelcomeScaffold(
      backGroundImage: Assets.images.bgScreen2.path,
      child: WelcomeCard(
        index: 1,
        bottom: WelcomeCardBottom(
          onNextPressed: () {
            context.router.replace(const WelcomeThirdView());
          },
        ),
      ),
    );
  }
}
