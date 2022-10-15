import 'package:flutter/material.dart';

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
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, i) {
                return Container(
                  width: double.infinity,
                  // height: 20,
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  margin: EdgeInsets.only(top: 20),
                  color: Colors.green,
                  child: Text("${tasks[i]}"),
                );
              }),
        ));
  }
}
