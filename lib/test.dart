import 'package:flutter/material.dart';

class TestStatefull extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<TestStatefull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Write your name ...",
                    // prefixIcon: Icon(Icons.help),
                    labelText: "Name",
                    suffix: Icon(
                      Icons.error,
                      color: Colors.red,
                    )),
              )
            ],
          ),
        ));
  }
}
