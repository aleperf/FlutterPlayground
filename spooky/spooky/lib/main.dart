import 'package:flutter/material.dart';

void main() {
  const appBarColor = const Color(0xff3AA70C);
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Spooky"),
        backgroundColor: appBarColor,
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/spooky.jpg'),
        ),
      ),
    ),
  ));
}
