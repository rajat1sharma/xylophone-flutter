import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void helper(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildkey(int num, string col) {
    return Expanded(
      child: FlatButton(
          color: Colors.$col,
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
              buildkey(1, red),
              buildkey(2),
              buildkey(3),
              buildkey(4),
              buildkey(5),
              buildkey(6),
              buildkey(7),
            ],
          ),
        ),
      ),
    );
  }
}
