import 'package:flutter/material.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _VerificationInput(),
        _VerificationInput(),
        _VerificationInput(),
        _VerificationInput(),
      ],
    );
  }
}

class _VerificationInput extends StatelessWidget {
  const _VerificationInput();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: TextField(
        maxLength: 1,
        showCursor: false,
        keyboardType: TextInputType.number,
        style: Theme.of(context).textTheme.headlineLarge,
        textAlign: TextAlign.center,
        autofocus: true,
        decoration: const InputDecoration(
          counter: Offstage(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}
