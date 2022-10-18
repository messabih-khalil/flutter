import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int? userColor = Colors.white.value;
  // shared data instance
  late SharedPreferences prefs;

  @protected
  saveColor(int? color) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setInt("userColor", color!.toInt());
  }

  @protected
  getColor() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      userColor = prefs.getInt("userColor") ?? Colors.white.value;
    });
    print("from data : ${userColor}");
  }

  @override
  Widget build(BuildContext context) {
    getColor();
    return Scaffold(
      backgroundColor: Color(userColor!.toInt()),
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            // radio buttons list
            RadioListTile(
              title: Text('green'),
              value: Colors.green.value,
              groupValue: userColor,
              onChanged: (int? value) {
                setState(() {
                  userColor = value;
                });
                saveColor(value);
              },
            ),
            RadioListTile(
              title: Text('red'),
              value: Colors.red.value,
              groupValue: userColor,
              onChanged: (int? value) {
                setState(() {
                  userColor = value;
                });
                saveColor(value);
              },
            ),
            RadioListTile(
              title: Text('blue'),
              value: Colors.blue.value,
              groupValue: userColor,
              onChanged: (int? value) {
                setState(() {
                  userColor = value;
                });
                saveColor(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
