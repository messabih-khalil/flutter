import 'package:flutter/material.dart';
import 'package:flutterapp/test.dart';

class CardPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CardView();
  }
}

class CardView extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    TaskName task = ModalRoute.of(context)?.settings.arguments as TaskName;

    return Scaffold(
      appBar: AppBar(),
      body: Text("task name : ${task.name}"),
    );
  }
}
