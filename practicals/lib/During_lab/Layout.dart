import 'package:flutter/material.dart';
import 'package:practicals/During_lab/Layout1.dart';

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Expanded Box_1(int flex, Color color) {
      return Expanded(
          flex: flex,
          child: Container(
            color: color,
          ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Layout"),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Layout1())); //push
            },
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
              flex: 5,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Box_1(1, Colors.indigo.shade200),
                                Box_1(2, Colors.red.shade200)
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Box_1(2, Colors.red.shade300),
                                Box_1(1, Colors.indigo.shade300),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Box_1(1, Colors.indigo.shade400),
                                Box_1(2, Colors.red.shade400),
                              ],
                            ),
                          )
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Box_1(2, Colors.yellow.shade100),
                          Expanded(
                              child: Row(
                            children: [
                              Box_1(9, Colors.amber.shade200),
                              Box_1(7, Colors.amber.shade400),
                              Box_1(7, Colors.amber.shade600),
                            ],
                          ))
                        ],
                      ))
                ],
              )),
          Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Box_1(1, Colors.green.shade200),
                      Box_1(1, Colors.green.shade400),
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: [
                      Box_1(2, Colors.purple.shade200),
                      Box_1(1, Colors.purple.shade400),
                      Box_1(1, Colors.purple.shade600),
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: [
                      Box_1(4, Colors.deepOrange.shade100),
                      Box_1(1, Colors.deepOrange.shade200),
                      Box_1(1, Colors.deepOrange.shade300),
                      Box_1(1, Colors.deepOrange.shade400),
                      Box_1(1, Colors.deepOrange.shade500),
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [
                                0.2,
                                0.4,
                                0.6,
                                0.8,
                              ],
                              colors: [
                                Colors.yellow.shade500,
                                Colors.red.shade500,
                                Colors.indigo.shade500,
                                Colors.teal.shade500,
                              ],
                            )),
                          )),
                      Expanded(
                          child: Row(
                        children: [
                          Expanded(
                              child: Column(
                            children: [
                              Box_1(1, Colors.brown.shade200),
                              Box_1(1, Colors.brown.shade300),
                              Box_1(1, Colors.brown.shade400),
                              Box_1(1, Colors.brown.shade500),
                            ],
                          )),
                          Expanded(
                              child: Column(
                            children: [
                              Box_1(1, Colors.pink.shade200),
                              Box_1(1, Colors.pink.shade300),
                              Box_1(1, Colors.pink.shade400),
                              Box_1(1, Colors.pink.shade500),
                            ],
                          ))
                        ],
                      ))
                    ],
                  )),
                ],
              )),
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Box_1(2, Colors.lightBlue.shade200),
                        Box_1(2, Colors.lightBlue.shade400),
                      ],
                    )),
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      Box_1(1, Colors.blueGrey.shade300),
                      Expanded(
                        child: Row(
                          children: [
                            Box_1(1, Colors.deepPurple.shade200),
                            Box_1(1, Colors.deepPurple.shade400),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
