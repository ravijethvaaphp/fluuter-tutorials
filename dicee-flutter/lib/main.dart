import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int diceLeft = 1;
  int diceRight = 5;
  void changeDiceNumbers(){
    setState(() {
      diceRight = Random().nextInt(6) + 1;
      diceLeft = Random().nextInt(6) + 1;
    });
  }
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(

            child: FlatButton(
              onPressed: () {
                changeDiceNumbers();
              },
              child: Image(
                image: AssetImage('images/dice$diceLeft.png'),

              ),
            ),
          ),
          Expanded(
            child:FlatButton(
              onPressed: () {    changeDiceNumbers(); },
              child: Image(
                image: AssetImage('images/dice$diceRight.png'),

              ),
            ),
          ),
        ],
      ),
    );
  }
}


