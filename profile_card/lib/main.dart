import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/hankyul1.jpg'),
              ),
              Text(
                'Hankyul Kim',
                style: TextStyle(
                  fontFamily: 'PressStart2P',
                  fontSize: 20.0,
                  color: Colors.red,
                ),
              ),
              Text(
                'DSC HUFS Lead',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.teal[100],
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                )
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Icon(icon)
                  ],
                )
              )
            ],
          )
        ),
      ),
    );
  }
}
