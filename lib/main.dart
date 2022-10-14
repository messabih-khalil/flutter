import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Card(
          margin: EdgeInsets.all(20),
          child: Text(
            "Card title",
            style: TextStyle(fontSize: 30),
          ),
          color: Colors.red,
        ));
  }
}
