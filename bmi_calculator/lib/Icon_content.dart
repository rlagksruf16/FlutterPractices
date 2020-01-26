import 'package:flutter/material.dart';



const labelTextStyle = TextStyle(
  fontSize: 18.0, 
  color: Color(0xFF8D8E98),
);

class CustomCard extends StatelessWidget {
  
  CustomCard({ this.myIcon, this.label});

  final IconData myIcon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          myIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label, 
          style: labelTextStyle,
        )
      ],
    );
  }

}