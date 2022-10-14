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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          width: 200,
          child: ListView(
            children: [
              Container(
                  height: 200,
                  color: Colors.green,
                  child: Center(
                    child: Text("data"),
                  )),
              Container(
                  height: 200,
                  color: Colors.green,
                  child: Center(
                    child: Text("data"),
                  )),
              Container(
                  height: 200,
                  color: Colors.green,
                  child: Center(
                    child: Text("data"),
                  )),
              Container(
                  height: 200,
                  color: Colors.green,
                  child: Center(
                    child: Text("data"),
                  )),
              Container(
                  height: 200,
                  color: Colors.green,
                  child: Center(
                    child: Text("data"),
                  )),
              Container(
                  height: 200,
                  color: Colors.green,
                  child: Center(
                    child: Text("data"),
                  )),
              Container(
                  height: 200,
                  color: Colors.green,
                  child: Center(
                    child: Text("data"),
                  )),
              Container(
                  height: 200,
                  color: Colors.green,
                  child: Center(
                    child: Text("data"),
                  )),
            ],
          ),
        ));
  }
}
