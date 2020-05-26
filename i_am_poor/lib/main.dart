import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.00,
                  backgroundImage: AssetImage('images/adya.jpg'),
                ),
                Text(
                  "Ravi Jethva",
                  style: TextStyle(
                      fontSize: 40.00,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pacifico',
                      color: Colors.white),
                ),
                Text(
                  "WEB DEVELOPER",
                  style: TextStyle(
                      fontSize: 20.00,
                      fontFamily: 'Abel',
                      color: Colors.white,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.00,
                  width: 140.00,
                  child: Divider(
                    color: Colors.redAccent.shade400,
                  ),
                ),
                Card(
                  color: Colors.white,
               
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading:
                      Icon(
                        Icons.phone,
                        color: Colors.teal.shade300,
                      ),
                     title:
                      Text(
                        "+91 123 456 7890",
                        style: TextStyle(
                            fontFamily: 'Abel',
                            color: Colors.teal.shade900,
                            fontSize: 20.00),
                      ),

                  ),
                ),
                Card(
                  color: Colors.white,

                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading:
                      Icon(
                        Icons.email,
                        color: Colors.teal.shade300,
                      ),
                     title:
                      Text(
                        "rax@example.com",
                        style: TextStyle(
                            fontSize: 20.00,
                            fontFamily: 'Abel',
                            color: Colors.teal.shade900),
                      ),

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
child: Row(
  crossAxisAlignment: CrossAxisAlignment.stretch,

  //  mainAxisAlignment: MainAxisAlignment.spaceBetween
  mainAxisAlignment: MainAxisAlignment.spaceBetween,

  children: [
    Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          child: Text("Container 0"),
          width: 100.0,
          color: Colors.red,
        ),
      ],
    ),
    Column(
         mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 100.00,
          height: 100.00,
          color: Colors.white,
        ),
        Container(
          width: 100.00,
          height: 100.00,
          color: Colors.yellow,
        )
      ],
    ),
    Row(
      children: <Widget>[
        Container(
          width: 100,
          color: Colors.green,
        )
      ],
    )
  ],
),           */
