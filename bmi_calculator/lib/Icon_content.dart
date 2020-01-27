import 'package:flutter/material.dart';
import 'constants.dart';


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