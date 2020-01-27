import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'Reuseable_card.dart';
import 'bottomButton.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.interpretation, @required this.bmiResult, @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('BMI 결과', style: kTitleTextStyle, 
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: backgroundColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),  
            ),
          ),
          BottomButton(
            buttonTitle: '다시 계산해보기', onTap: () {Navigator.pop(context); },)
        ],
      ),
    );
  }
}

