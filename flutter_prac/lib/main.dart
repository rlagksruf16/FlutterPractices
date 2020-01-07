import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('I am rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        backgroundColor: Colors.blueGrey,
        // Scaffold 자체가 모든 영역을 다 포함하고 있기 때문에 body 가 아닌 바로 backgroundColor 적용하면 된다
        body: Center(
          child: Image(
            image: 
            // NetworkImage('https://www.w3schools.com/w3css/img_lights.jpg'),
              AssetImage('images/diamond.png'),
          ),
        ),
      ),
    ),
  );
}