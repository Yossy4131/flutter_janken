import 'package:flutter/material.dart';
import 'result_screen.dart';
import '../widgets/janken_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('じゃんけんアプリ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '手を選んでください',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                JankenButton(
                  label: '✊',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const ResultScreen(playerHand: '✊'),
                      ),
                    );
                  },
                ),
                const SizedBox(width: 10),
                JankenButton(
                  label: '✋',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const ResultScreen(playerHand: '✋'),
                      ),
                    );
                  },
                ),
                const SizedBox(width: 10),
                JankenButton(
                  label: '✌',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const ResultScreen(playerHand: '✌'),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
