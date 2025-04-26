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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        textStyle: const TextStyle(fontSize: 18),
      ),
      child: Text(label),
    );
  }
}
