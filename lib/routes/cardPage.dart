import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CardView();
  }
}

class CardView extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("Card Route"),
    );
  }
}
