import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  var audioNo;
  void playSound(audioNo){
    final assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer.open(
      Audio("assets/note$audioNo.wav"),
    );
  }
  Expanded button1({Color color, int audioNo}){

    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(audioNo);
        },
      ),
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
            children: <Widget>[
              button1(color: Colors.red, audioNo:1),
              button1(color: Colors.orange, audioNo:1),
              button1(color: Colors.yellow, audioNo:2),
              button1(color: Colors.green, audioNo:3),
              button1(color: Colors.teal, audioNo:4),
              button1(color: Colors.blue, audioNo:5),
              button1(color: Colors.purple, audioNo:6),
            ],
          ),
        ),
      ),
    );
  }
}