import 'package:flutter/material.dart';

import 'package:flutterapp/test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TestStatefull());
  }
}
