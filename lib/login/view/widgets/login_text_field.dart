import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({super.key, this.hintText, this.label});

  final String? hintText;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(label ?? ''),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
            border: const OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
