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
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              print("from click button");
            },
            child: Text("click"),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20), backgroundColor: Colors.red),
          ),
        ));
  }
}
