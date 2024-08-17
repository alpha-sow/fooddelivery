import 'package:flutter/material.dart';
import 'package:fooddelivery/assets/assets.gen.dart';
import 'package:fooddelivery/login/view/widgets/login_divider.dart';
import 'package:fooddelivery/login/view/widgets/login_icon_button.dart';

class LoginSingInWidth extends StatelessWidget {
  const LoginSingInWidth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LoginDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LoginIconButton(
              onPressed: () {},
              child: Assets.images.icons.google.svg(
                width: 25,
                height: 25,
              ),
            ),
            LoginIconButton(
              onPressed: () {},
              child: Assets.images.icons.facebook.svg(
                width: 25,
                height: 25,
              ),
            ),
            LoginIconButton(
              onPressed: () {},
              child: Assets.images.icons.apple.svg(
                width: 25,
                height: 25,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
