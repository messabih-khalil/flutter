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
        margin: EdgeInsets.all(10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(right: 10),
                color: Colors.amber,
              ),
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(right: 10),
                color: Colors.amber,
              ),
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(right: 10),
                color: Colors.amber,
              ),
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(right: 10),
                color: Colors.amber,
              ),
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(right: 10),
                color: Colors.amber,
              ),
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(right: 10),
                color: Colors.amber,
              ),
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(right: 10),
                color: Colors.amber,
              ),
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(right: 10),
                color: Colors.amber,
              ),
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(right: 10),
                color: Colors.amber,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
