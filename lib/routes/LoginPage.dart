import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutterapp/test.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageView();
  }
}

class LoginPageView extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<FormState>();

  Map info = {
    "text": "",
  };

  int age = 0;
  // Controler for text field
  final ageControler = TextEditingController();

  // this under functio is like mounted in vue
  @override
  initState() {
    super.initState();
    ageControler.addListener(getLatest);
  }

  getLatest() {
    setState(() {
      age = int.parse(ageControler.text);
    });
  }

  @protected
  convertAgeToDAys(int age) {
    return age * 365;
  }

  bool val = false;
  String? text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: val ? Colors.black : null,
      key: scaffoldKey,
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "Login page",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            // form section
            Form(
                child: Column(
              children: [
                // name input
                TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: "Your name ...",
                  ),
                  onChanged: (value) {
                    setState(() {
                      info["text"] = value;
                    });
                  },
                ),
                // age input
                TextField(
                  controller: ageControler,
                  decoration:
                      new InputDecoration(labelText: "Enter your number"),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        text = info["text"];
                      });
                    },
                    child: Text("print")),
                Switch(
                  value: val,
                  onChanged: (value) {
                    setState(() {
                      val = value;
                    });
                  },
                )
              ],
            )),
            // text change
            Text("${text}"),
            // age in days
            Text("your age in days  : ${convertAgeToDAys(age)}"),
          ],
        ),
      ),
    );
  }
}
