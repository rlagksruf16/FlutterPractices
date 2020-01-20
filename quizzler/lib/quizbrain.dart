import 'question.dart';

class QuizBrain {

  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('DSC HUFS는 현재 Flutter 스터디를 진행하고 있다.' , true),
    Question('DSC는 Develope Student Clubs의 약자이다', false),
    Question('DSC HUFS 의 Core Member(lead 제외)는 총 4명이다', true),
    Question('DSC HUFS 인원은 총 24명이다', true),
    Question('DSC Korea의 학교는 총 12개이다', true),
    Question('DSC HUFS는 아무런 이벤트를 진행한 적이 없다', false),
    Question('DSC Korea 는 밋업을 진행한 적이 있다.', true),
    Question('DSC HUFS는 알고리즘 페스티벌을 기획하지 않았다.', false),
    Question('DSC HUFS는 잔디왕 김훕스라는 프로그램을 진행하고 있지 않다', false),
    Question('DSC Korea 는 한국에만 존재한다', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1)
      _questionNumber++;
    // print(_questionNumber);
    // print(_questionBank.length);
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber == _questionBank.length - 1)
      return true;
    else 
      return false;
  }
  
  void reset() {
    _questionNumber = 0;
  }
}