import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const JankenApp());
}

class JankenApp extends StatelessWidget {
  const JankenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'じゃんけんアプリ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
