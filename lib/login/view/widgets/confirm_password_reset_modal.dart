import 'package:alpha_ui/alpha_ui.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/assets/assets.gen.dart';
import 'package:fooddelivery/login/view/widgets/login_header.dart';
import 'package:fooddelivery/login/view/widgets/login_modal.dart';

class ConfirmPasswordResetModal extends StatelessWidget {
  const ConfirmPasswordResetModal({super.key, this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return LoginModal(
      child: Column(
        children: [
          Assets.images.success.svg(width: 120, height: 120),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: LoginHeader(
              alignment: CrossAxisAlignment.center,
              title: 'Password Changed',
              subtitle: 'Password changed successfully, you can login '
                  'again with a new password',
            ),
          ),
          Button(
            onPressed: onPressed,
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
