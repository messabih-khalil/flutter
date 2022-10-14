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
        body: Center(
          child: Checkbox(
            onChanged: (v) {
              setState(() {
                checked = v;
              });
            },
            value: checked,
          ),
        ));
  }
}
