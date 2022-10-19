import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int counter = 0;

  // get local path
  Future<String> getLocalPath() async {
    var folder = await getApplicationDocumentsDirectory();
    return folder.path;
  }

  // get local file
  Future<File> getLocalFile() async {
    String path = await getLocalPath();
    return File('$path/counter.txt');
  }

  Future<File> writeToFile(int counter) async {
    File file = await getLocalFile();
    return file.writeAsString('$counter');
  }

  Future<int> readCounter() async {
    try {
      final file = await getLocalFile();
      String counter = await file.readAsString();

      return int.parse(counter);
    } catch (e) {
      print(e);
      return 0;
    }
  }

  @override
  void initState() {
    super.initState();
    readCounter().then((value) {
      setState(() {
        counter = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Read/Write files"),
      ),
      body: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("increase counter"),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Text("number is : ${counter}"),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });

                    // write to file

                    writeToFile(counter);
                  },
                  child: Text("Increase"))
            ],
          )),
    );
  }
}
