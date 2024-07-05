import 'package:flutter/material.dart';

import 'Layout.dart';
import 'Layout4.dart';

class Layout3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout-3"),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Layout4(),
                ),
              ); //push
            },
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Box_1(1, Colors.red.shade400),
                Box_1(1, Colors.red.shade300),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Box_1(1, Colors.orange.shade200),
                            Box_1(1, Colors.orange.shade400),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Box_1(1, Colors.yellow.shade200),
                            Box_1(1, Colors.yellow.shade400),
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
                Box_1(1, Colors.green.shade400),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Box_1(1, Colors.orange.shade700),
                            Box_1(1, Colors.orange.shade500),
                            Box_1(1, Colors.orange.shade300),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Box_1(3, Colors.green.shade700),
                            Box_1(1, Colors.green.shade500),
                            Box_1(3, Colors.green.shade300),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Box_1(1, Colors.brown.shade700),
                            Box_1(1, Colors.brown.shade500),
                            Box_1(1, Colors.brown.shade300),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Box_1(1, Colors.green.shade200),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Box_1(1, Colors.blue.shade400),
                Box_1(1, Colors.blue.shade300),
                Box_1(1, Colors.blue.shade200),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Expanded Box_1(int flex, Color color) {
    return Expanded(
      flex: flex,
      child: Container(
        color: color,
      ),
    );
  }
}
