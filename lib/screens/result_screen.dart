import 'package:flutter/material.dart';
import 'dart:math';

class ResultScreen extends StatelessWidget {
  final String playerHand;

  const ResultScreen({super.key, required this.playerHand});

  String _getCpuHand() {
    const hands = ['✊', '✋', '✌'];
    return hands[Random().nextInt(hands.length)];
  }

  String _getResult(String playerHand, String cpuHand) {
    if (playerHand == cpuHand) return '引き分け';
    if ((playerHand == '✊' && cpuHand == '✌') ||
        (playerHand == '✋' && cpuHand == '✊') ||
        (playerHand == '✌' && cpuHand == '✋')) {
      return 'あなたの勝ち!';
    }
    return 'あなたの負け!';
  }

  @override
  Widget build(BuildContext context) {
    final cpuHand = _getCpuHand();
    final result = _getResult(playerHand, cpuHand);

    return Scaffold(
      appBar: AppBar(
        title: const Text('結果'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('あなたの手: $playerHand', style: const TextStyle(fontSize: 20)),
            Text('CPUの手: $cpuHand', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            Text(result,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('戻る'),
            ),
          ],
        ),
      ),
    );
  }
}
