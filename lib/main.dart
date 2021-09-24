import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String sound) {
    final player = AudioCache();
    player.play(sound);
  }

  Expanded xyloButton(int soundNr, Color color) => Expanded(
        child: TextButton(
          onPressed: () {
            playSound('note$soundNr.wav');
          },
          child: Container(color: color),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              xyloButton(1, Colors.red),
              xyloButton(2, Colors.orange),
              xyloButton(3, Colors.yellow),
              xyloButton(4, Colors.green),
              xyloButton(5, Colors.cyan),
              xyloButton(6, Colors.blue),
              xyloButton(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
