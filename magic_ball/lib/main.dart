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
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Ask Me Anything'),
      ),
      body:
      Column(
        children: <Widget>[
          Container(
            height: 10.0,
          ),
          Container(
            width: 250.0,
            height: 50.0,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '질문 사항',
              ),
            ),
          ),
          Container(
            height: 10.0,
          ),
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