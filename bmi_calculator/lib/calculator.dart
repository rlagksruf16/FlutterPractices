
import 'dart:math';

class Calculator {
  
  Calculator({this.height, this.weight});

  final int height;
  final int weight;


  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1); // string을 하나만 뽑아낼 수 있게 해주는 메서드
  }

  String getResult() {
    if(_bmi >= 25) {
      return '과체중';
    }
    else if(_bmi > 18.5) {
      return '정상';
    }
    else {
      return '저체중';
    }
  }

  String getInterpretation() {
    if(_bmi >= 25) {
      return '운동을 조금 더 하고 침대와 멀어지세요';
    }
    else if(_bmi > 18.5) {
      return '잘 유지하고 있네요!';
    }
    else {
      return '치킨, 피자 그리고 야식을 조금 많이 먹어봐요!';
    }
  }
}