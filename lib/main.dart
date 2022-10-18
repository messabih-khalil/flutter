import 'package:flutter/material.dart';

import 'package:flutterapp/home.dart';
import 'package:flutterapp/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {"/settings": (context) => Settings()},
    );
  }
}
