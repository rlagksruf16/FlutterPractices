import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Icon_content.dart';
import 'Reuseable_card.dart';

const bottomContainerHeights = 40.0;
const bottomColor = Color(0xFFEB1555);
const backgroundColor = 0xFF1D1E33;


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(
                    colour: Color(backgroundColor),
                    cardChild: CustomCard(
                      myIcon: FontAwesomeIcons.mars, 
                      label: 'male',
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: Color(backgroundColor),
                    cardChild: CustomCard(
                      myIcon: FontAwesomeIcons.venus, 
                      label: 'female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              colour: Color(backgroundColor),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(
                    colour: Color(backgroundColor),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: Color(backgroundColor),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeights,
          )
        ],
      ),
    );
  }
}



