import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void playSound(int soundNum){
    final player = new AudioCache();
    player.play('note$soundNum.wav');
  }
buildkey(colour,soundNum){
return  Expanded(
    child: FlatButton(
      color: colour,
      onPressed: () {
        playSound(soundNum);
      },
    ),
  );
}
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(

          child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: <Widget>[
              buildkey(Colors.red,1),
              buildkey(Colors.green,2),
              buildkey(Colors.blueAccent,3),
              buildkey(Colors.yellow,4),
              buildkey(Colors.teal,5),
              buildkey(Colors.purple,6),
              buildkey(Colors.pinkAccent,7),



            ],
          )),
        ),
      ),
    );
  }
}

//child: FlatButton(
//color: Colors.red,
//onPressed: (){
//final player = new AudioCache();
//player.play('note1.wav');
//},
//),
