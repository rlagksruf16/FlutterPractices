import 'package:chat_service/constants.dart';
import 'package:flutter/material.dart';
import 'package:chat_service/components/roundedButton.dart';
import 'package:chat_service/constants.dart';

class RegistrationScreen extends StatefulWidget {

  static String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(hintText: '이메일을 입력하세요'),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(hintText: '비밀번호를 입력하세요'),
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(color: Colors.blueAccent, title: '회원가입', onPressed: null),
          ],
        ),
      ),
    );
  }
}
