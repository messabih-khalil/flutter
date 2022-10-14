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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: DropdownButton(
            items: ["Pizza", "Burger"]
                .map((e) => DropdownMenuItem(child: Text("$e"), value: e))
                .toList(),
            onChanged: (val) {
              setState(() {
                food = val;
              });
            },
            value: food,
          ),
        ));
  }
}
