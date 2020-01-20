import 'question.dart';

class QuizBrain {

  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('You can lead a cow down stairs but not up stairs.' , false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('DSC HUFS 인원은 총 24명이다', true),
    Question('DSC Korea의 학교는 총 12개이다', true),
    Question('DSC HUFS는 아무런 이벤트를 진행한 적이 없다', false),
    Question('Flutter is consisted of widgets', true),
    Question('Flutter 는 Dart로 이루어져 있지 않다', false),
    Question('DSC HUFS는 잔디왕 김훕스라는 프로그램을 진행하고 있지 않다', false),
    Question('DSC Korea 는 한국에만 존재한다', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1)
      _questionNumber++;
    print(_questionNumber);
    print(_questionBank.length);
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }


}