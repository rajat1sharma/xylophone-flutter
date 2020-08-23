import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void helper(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildkey(int num, Color col) {
    return Expanded(
      child: FlatButton(
          color: col,
          onPressed: () {
            helper(num);
          },
          child: null),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(1, Colors.red),
              buildkey(2, Colors.yellow),
              buildkey(3, Colors.green),
              buildkey(4, Colors.orange),
              buildkey(5, Colors.blue),
              buildkey(6, Colors.teal),
              buildkey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
