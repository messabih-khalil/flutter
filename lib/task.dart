import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class TaskStateFull extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Task();
  }
}

class Task extends State<TaskStateFull> {
  // var uuid = Uuid();
  List<Map> taskList = [];

  Map task = {
    "id": null,
    "title": null,
    "created_at": null,
    "completed": false
  };
  final fieldText = TextEditingController();
  void clearText() {
    fieldText.clear();
  }

  @override
  void initState() {
    super.initState();
    // Start listening to changes.
    fieldText.addListener(() {
      setState(() {
        task["id"] = DateTime.now().microsecondsSinceEpoch.toString();
        task["title"] = fieldText.text.toLowerCase();
        task["created_at"] = DateTime.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // task header
                    Text(
                      "Todo application",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    // task input with add button
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // task input
                          TextField(
                            decoration: InputDecoration(
                              filled: true, //<-- SEE HERE
                              fillColor: Color.fromARGB(255, 218, 218, 218),
                              hintText: 'Task title ...',
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0),
                              // border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blueAccent, width: 2.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                            controller: fieldText,
                          ),
                          // add button
                          ElevatedButton(
                              onPressed: () {
                                taskList.insert(0, task);
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 20.0),
                                child: Text("add"),
                              ))
                        ],
                      ),
                    ),

                    // task list
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: taskList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            child: ListTile(
                              title: Text('${taskList[index]["title"]}'),
                              isThreeLine: true,
                              subtitle: Text('Secondary text\nTertiary text'),
                              // leading: Icon(Icons.label),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          taskList.removeWhere((element) =>
                                              element["id"] ==
                                              taskList[index]["id"]);
                                        });
                                      },
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      ))
                                ],
                              ),
                              tileColor: Color.fromARGB(255, 196, 196, 196),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          );
                        },
                      ),
                    ),
                  ],

                  // list tail of tasks
                ))));
  }
}
