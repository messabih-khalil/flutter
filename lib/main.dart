import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // box title
              Container(
                width: double.infinity,
                color: Colors.blue,
                padding: EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Text(
                  "Strawberry Pavlova Recipe",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              // end box title

              // start text section
              Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi non quis exercitationem culpa nesciunt nihil aut nostrum explicabo reprehenderit optio amet ab temporibus asperiores quasi cupiditate. Voluptatum ducimus voluptates",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              // end text section

              // start box section
              Container(
                color: Colors.red,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.black,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          Text(
                            "17 reviews",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    // start child boxes
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(children: [
                            // icon
                            Icon(Icons.home, color: Colors.green, size: 40),
                            //  name
                            Text("Home"),
                            // number
                            Text("2- 4")
                          ]),
                          Column(children: [
                            // icon
                            Icon(Icons.home, color: Colors.green, size: 40),
                            //  name
                            Text("Home"),
                            // number
                            Text("2- 4")
                          ]),
                          Column(children: [
                            // icon
                            Icon(Icons.home, color: Colors.green, size: 40),
                            //  name
                            Text("Home"),
                            // number
                            Text("2- 4")
                          ])
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
