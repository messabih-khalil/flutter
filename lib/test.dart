import 'package:flutter/material.dart';

import 'package:flutterapp/routes/LoginPage.dart';

class TestStatefull extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<TestStatefull> {
  var counter = 0;
  String? food = "Pizza";
  bool? checked = false;
  List<String> tasks = [
    "cook",
    "sport",
    "read book",
    "cook",
    "sport",
    "read book",
    "cook",
    "sport",
    "read book",
    "cook",
    "sport",
    "read book",
    "cook",
    "sport",
    "read book",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: EdgeInsets.all(20),
          child: ElevatedButton(
            child: Text("LoginPage"),
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
        ));
  }
}

class TaskName {
  String name;
  TaskName(this.name);
}
