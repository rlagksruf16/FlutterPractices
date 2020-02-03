import 'package:flutter/material.dart';
import 'package:chat_service/screens/welcome_screen.dart';
import 'package:chat_service/screens/login_screen.dart';
import 'package:chat_service/screens/registration_screen.dart';
import 'package:chat_service/screens/chat_screen.dart';

void main() => runApp(ChatService());

class ChatService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      }
    );
  }
}