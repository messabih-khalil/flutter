import 'package:flutter/material.dart';
import 'package:flutterapp/routes/LoginPage.dart';

import 'package:flutterapp/test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestStatefull(),
      // routes
      routes: {"/login": (context) => LoginPage()},
    );
  }
}
