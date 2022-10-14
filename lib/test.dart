import 'package:flutter/material.dart';


class TestStatefull extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<TestStatefull> {
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "number is : ${this.counter}",
                style: TextStyle(fontSize: 25),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter += 1;
                    });
                    print(counter);
                  },
                  child: Text("Increase")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (counter == 0) {
                        counter = 0;
                      } else {
                        counter -= 1;
                      }
                    });
                    print(counter);
                  },
                  child: Text("Decrease"))
            ],
          ),
        ));
  }
}