import 'package:flutter/material.dart';

import 'package:flutterapp/routes/cardPage.dart';

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
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemCount: tasks.length,
              itemBuilder: (context, i) {
                return Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${tasks[i]}"),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CardPage()));
                          },
                          child: Text("Go to ${tasks[i]}"))
                    ],
                  ),
                );
              }),
        ));
  }
}
