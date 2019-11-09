import 'package:flutter/material.dart';

void main() => runApp(SantaCard());

class SantaCard extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red,
          body: SingleChildScrollView(
            padding: EdgeInsets.only(top: 50.0),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 80.0,
                    backgroundColor: Colors.red,
                    backgroundImage: AssetImage('assets/images/santa_pic.jpg'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Santa Claus",
                    style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.white,
                        fontFamily: 'Chewy',
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "EXPERT SLEIGH DRIVER",
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.red[100],
                        fontFamily: 'JosefinSans',
                        letterSpacing: 2.5),
                  ),
                  SizedBox(
                    height: 20.0,
                    width: 150.0,
                    child: Divider(
                      color: Colors.red.shade100,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("At your disposal 364 days a year",
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.red[100],
                          fontFamily: 'JosefinSans',
                          letterSpacing: 2,
                          fontStyle: FontStyle.italic)),
                  SizedBox(
                    height: 10.0,
                  ),
                  Card(
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: ListTile(
                        leading:
                            Icon(Icons.phone, size: 20.0, color: Colors.red),
                        title: Text("+25 12 HO HO HO",
                            style: TextStyle(
                                color: Colors.red.shade900,
                                fontFamily: 'JosefinSans',
                                fontSize: 18.0)),
                      )),
                  Card(
                      color: Colors.white,
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 25.0),
                      child: ListTile(
                        leading:
                            Icon(Icons.email, size: 18.0, color: Colors.red),
                        title: Text("email: santa@northpole.ho",
                            style: TextStyle(
                                color: Colors.red.shade900,
                                fontFamily: 'JosefinSans',
                                fontSize: 18.0)),
                      ))
                ],
              ),
            ),
          )),
    );
  }
}
