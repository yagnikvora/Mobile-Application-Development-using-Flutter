import 'package:flutter/material.dart';

import 'Layout.dart';

class Layout4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Expanded box_1(int f, Color c) {
      return Expanded(
        flex: f,
        child: Container(
          color: c,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Layout-4"),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Layout(),
                  ),
                );
              },
              icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                box_1(3, Colors.blue.shade200),
                box_1(1, Colors.blue.shade400)
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                box_1(1, Colors.green.shade200),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            box_1(1, Colors.purple.shade400),
                            box_1(1, Colors.purple.shade200),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            box_1(1, Colors.yellow.shade200),
                            box_1(1, Colors.yellow.shade400),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                box_1(1, Colors.green.shade600),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      box_1(1, Colors.brown.shade400),
                      box_1(1, Colors.brown.shade300),
                      box_1(1, Colors.brown.shade200),
                      box_1(1, Colors.brown.shade100),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  box_1(1, Colors.lightGreenAccent.shade200),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Expanded(
                                            child: Row(
                                          children: [
                                            box_1(1, Colors.purple.shade200),
                                            box_1(1, Colors.purple.shade400),
                                          ],
                                        )),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              box_1(1, Colors.purple.shade400),
                                              box_1(1, Colors.purple.shade200),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  box_1(1, Colors.lightGreenAccent.shade400),
                                  box_1(1, Colors.lightGreenAccent.shade200),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            box_1(1, Colors.blue.shade400),
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        box_1(1,
                                            Colors.lightGreenAccent.shade200),
                                        Expanded(
                                          child: Column(
                                            children: [
                                              Expanded(
                                                  child: Row(
                                                children: [
                                                  box_1(1,
                                                      Colors.purple.shade200),
                                                  box_1(1,
                                                      Colors.purple.shade400),
                                                ],
                                              )),
                                              Expanded(
                                                child: Row(
                                                  children: [
                                                    box_1(1,
                                                        Colors.purple.shade400),
                                                    box_1(1,
                                                        Colors.purple.shade200),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        box_1(1,
                                            Colors.lightGreenAccent.shade400),
                                        box_1(1,
                                            Colors.lightGreenAccent.shade200),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
