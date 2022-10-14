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
          child: Center(
            child: GestureDetector(
              onDoubleTap: () {
                print("double tap");
              },
              onTap: () {
                print("just click");
              },
              child: Container(
                color: Colors.amber,
                child: Text("Button"),
                padding: EdgeInsets.all(10),
              ),
            ),
          ),
        ));
  }
}
