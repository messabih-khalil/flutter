import 'package:flutter/material.dart';
// import 'package:uuid/uuid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map> tasks = [
    {
      "id": "00",
      "title": "new task",
      "date": "0000-000-000",
      "completed": false,
    },
    {
      "id": "00",
      "title": "new task",
      "date": "0000-000-000",
      "completed": false,
    },
    {
      "id": "00",
      "title": "new task",
      "date": "0000-000-000",
      "completed": false,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sqlite data"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/createTask');
                },
                icon: Icon(Icons.edit_note))
          ],
        ),
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          child: ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  title: Text('${tasks[index]["title"]}'),
                  tileColor: tasks[index]["completed"]
                      ? Colors.green
                      : Color.fromARGB(255, 211, 211, 211),
                  subtitle: Text('Secondary text\nTertiary text'),
                  trailing: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                ),
              );
            },
          ),
        ));
  }
}
