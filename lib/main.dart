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
          padding: EdgeInsets.all(20),
          color: Colors.red,
          width: double.infinity,
          // height: 200,
          child: Row(
            // justify content
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // align items
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/books.png'),
              Text("Logic Books"),
            ],
          ),
        ));
  }
}
