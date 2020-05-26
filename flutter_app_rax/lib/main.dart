import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
         backgroundColor: Colors.blueGrey[400],
        appBar: AppBar(
          title: Center(
            child: Text("Angry Club"),
          ),
        ),
        body: Center(
          child: Image.asset('images/audio-5.jpg')
        ),
      ),
    ),
  );
}
