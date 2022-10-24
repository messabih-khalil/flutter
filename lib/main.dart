import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Stack widget'),
          ),
          body: Container(
            padding: EdgeInsets.all(20),
            child: Container(
              padding: EdgeInsets.all(20),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://www.comboinfinito.com.br/principal/wp-content/uploads/2021/08/PS5-revisado-1-790x444.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                          width: 250,
                          height: 80,
                          bottom: -40,
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // title and price
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // title
                                    Text(
                                      "Play station 5",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    // price
                                    Text(
                                      "800\$",
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 18),
                                    )
                                  ],
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add_shopping_cart,
                                    size: 28.0,
                                    color: Colors.blue,
                                  ),
                                )
                              ],
                            ),
                          ))
                    ]),
              ),
            ),
          )),
    );
  }
}
