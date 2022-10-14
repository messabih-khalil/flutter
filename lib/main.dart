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
        body: Container(
          width: double.infinity,
          height: 70,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(color: Colors.grey, blurRadius: 2, spreadRadius: 1)
              ]),
          child: Text(
            "Learn typescript",
            style: TextStyle(
              fontSize: 18.0,
              // color
              color: Color.fromARGB(255, 34, 34, 34),
              // font properties
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }
}
