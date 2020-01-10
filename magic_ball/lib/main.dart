import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );


class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Ask Me Anything'),
      ),
      body: Column(
        children: <Widget>[
          Text('hi'),
          Ball(),

        ],  
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  
  int ballNumber = 1;
  @override

  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5)+1;  
          });
          // print('I clicked the button');
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}