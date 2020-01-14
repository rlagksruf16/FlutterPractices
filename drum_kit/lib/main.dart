import 'package:flutter/material.dart';

void main() => runApp(Drumkit());

class Drumkit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: <Widget>[
                    Container(
                      color: Colors.red,
                    ),
                    Container( ),
                    Container(),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(),
                    Container(),
                    Container(),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(),
                    Container(),
                    Container(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}