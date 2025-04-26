import 'package:flutter/material.dart';

class JankenButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const JankenButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        textStyle: const TextStyle(fontSize: 30),
      ),
      child: Text(label),
    );
  }
}
