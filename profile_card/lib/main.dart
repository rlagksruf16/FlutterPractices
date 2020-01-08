import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue[400],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/hankyul1.jpg'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Hankyul Kim',
                style: TextStyle(
                  fontFamily: 'PressStart2P',
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              Text(
                'DSC HUFS Lead',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.lightBlue[100],
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.lightBlue.shade100,
                )
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.lightBlue[400],
                    ),
                  title: Text(
                    '+82 10-5046-4216',
                    style: TextStyle(
                      color: Colors.lightBlue.shade900,
                      fontFamily: 'SourceSansPro',
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
                child: ListTile(
                  leading: Icon(
                      Icons.mail,
                      color: Colors.lightBlue[400],
                      ),
                      title: Text(
                        'rlagksruf16@gmail.com',
                        style: TextStyle(
                          color: Colors.lightBlue.shade900,
                          fontFamily: 'SourceSansPro',
                          fontSize: 15.0,
                        ),
                      ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 100.0),
                child: ListTile(
                      title: Text(
                        'Click Me',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.lightBlue.shade900,
                          fontFamily: 'PressStart2P',
                          fontSize: 15.0,
                        ),
                      ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}










// Container 활용한 카드 만들기


// Container(
//                 padding: EdgeInsets.all(10.0),
//                 color: Colors.white,
//                 margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
//                 child: Row(
//                   children: <Widget>[
//                     Icon(
//                       Icons.phone,
//                       color: Colors.teal,
//                       ),
//                       SizedBox(
//                         width: 10.0,
//                       ),
//                       Text(
//                         '+82 10-5046-4216',
//                         style: TextStyle(
//                           color: Colors.teal.shade900,
//                           fontFamily: 'SourceSansPro',
//                           fontSize: 15.0,
//                         ),
                      
//                       ),
//                   ],
//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.all(10.0),
//                 color: Colors.white,
//                 margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
//                 child: Row(
//                   children: <Widget>[
//                     Icon(
//                       Icons.mail,
//                       color: Colors.teal,
//                       ),
//                       SizedBox(
//                         width: 10.0,
//                       ),
//                       Text(
//                         'rlagksruf16@gmail.com',
//                         style: TextStyle(
//                           color: Colors.teal.shade900,
//                           fontFamily: 'SourceSansPro',
//                           fontSize: 15.0,
//                         ),
//                       ),
//                   ],
//                 )
//               )