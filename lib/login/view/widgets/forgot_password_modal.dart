import 'package:flutter/material.dart';
import 'package:fooddelivery/login/view/widgets/login_button.dart';
import 'package:fooddelivery/login/view/widgets/login_header.dart';

class ForgotPasswordModal extends StatelessWidget {
  const ForgotPasswordModal({super.key, this.onContinuePressed});

  final void Function()? onContinuePressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .5,
      width: double.infinity,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0, top: 10),
                  child: Container(
                    width: 80,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
              const LoginHeader(
                title: 'Forgot Password ?',
                subtitle: 'Select which contact details should we use '
                    'to reset your password',
              ),
              const _ModalListTile(
                leading: Icon(Icons.phone),
                title: 'Send via WhatsApp',
                subtitle: '+33 347 283 828',
                isSelected: true,
              ),
              const _ModalListTile(
                leading: Icon(Icons.mail),
                title: 'Send via Email',
                subtitle: 'Albertstevano@gmail.com',
              ),
              const Spacer(),
              LoginButton(
                label: 'Continue',
                onPressed: onContinuePressed,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ModalListTile extends StatelessWidget {
  const _ModalListTile({
    required this.title,
    required this.subtitle,
    this.isSelected = false,
    this.leading,
  });

  final String title;
  final String subtitle;
  final bool isSelected;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: ListTile(
        leading: leading,
        title: Text(title),
        subtitle: Text(subtitle),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: isSelected ? color.primary : color.secondary,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        trailing: isSelected
            ? Checkbox(
                value: isSelected,
                shape: const CircleBorder(),
                onChanged: (value) {},
              )
            : null,
      ),
    );
  }
}
