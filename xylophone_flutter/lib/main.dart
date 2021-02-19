import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void noteNum(int num) {
    print('$num.wav');
    final audioCache = AudioCache();
    audioCache.play('note$num.wav');
  }

  Expanded buildKey({int num, Color color}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          noteNum(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(num: 1, color: Colors.red),
                buildKey(num: 2, color: Colors.orange),
                buildKey(num: 3, color: Colors.amber),
                buildKey(num: 4, color: Colors.yellowAccent),
                buildKey(num: 5, color: Colors.green),
                buildKey(num: 6, color: Colors.blue),
                buildKey(num: 7, color: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
