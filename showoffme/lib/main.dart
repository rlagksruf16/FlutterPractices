import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold (
        appBar: AppBar(
          title: Text('Github 주소 Please Follow!'),
          backgroundColor: Colors.grey[800],
        ),
        body: Center (
          Column (
            children: <Widget>[
              Text('QR 코드!'),
              Image(
                image: 
                  AssetImage('images/github.png'),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}