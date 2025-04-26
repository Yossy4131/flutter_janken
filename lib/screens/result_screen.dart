import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

class ResultScreen extends StatefulWidget {
  final String playerHand;

  const ResultScreen({super.key, required this.playerHand});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  String? _cpuHand;
  String? _finalCpuHand;
  String? _result;
  late Timer _timer;

  final List<String> _hands = ['✊', '✋', '✌'];

  @override
  void initState() {
    super.initState();
    _startRandomCpuHand();
  }

  void _startRandomCpuHand() {
    _timer = Timer.periodic(const Duration(milliseconds: 200), (timer) {
      setState(() {
        _cpuHand = _hands[Random().nextInt(_hands.length)];
      });
    });

    // Stop the random hand after 3 seconds and determine the result
    Future.delayed(const Duration(seconds: 3), () {
      _timer.cancel();
      _finalCpuHand = _hands[Random().nextInt(_hands.length)];
      _result = _determineResult(widget.playerHand, _finalCpuHand!);
      setState(() {});
    });
  }

  String _determineResult(String playerHand, String cpuHand) {
    if (playerHand == cpuHand) return '引き分け';
    if ((playerHand == '✊' && cpuHand == '✌') ||
        (playerHand == '✋' && cpuHand == '✊') ||
        (playerHand == '✌' && cpuHand == '✋')) {
      return 'あなたの勝ち！';
    }
    return 'あなたの負け...';
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('結果画面'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'あなたの手:',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            Text(
              widget.playerHand,
              style: const TextStyle(fontSize: 50), // 大きな絵文字
            ),
            const SizedBox(height: 20),
            const Text(
              'CPUの手:',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            Text(
              _finalCpuHand ?? _cpuHand ?? '...',
              style: const TextStyle(fontSize: 50), // 大きな絵文字
            ),
            const SizedBox(height: 20),
            if (_result != null)
              Text(
                _result!,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            const SizedBox(height: 20),
            if (_result != null)
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
