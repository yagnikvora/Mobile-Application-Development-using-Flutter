import 'package:flutter/material.dart';

import 'Layout3.dart';

class Layout2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Expanded Box_1(int flex, Color color,String val) {
      return Expanded(
          flex: flex,
          child: Container(
            color: color,
            child: Center(child: Text(val)),
          ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Layout-2"),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Layout3())); //push
            },
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Box_1(1, Colors.orange.shade100,"1"),
                Box_1(1, Colors.orange.shade200,"2"),
                Box_1(1, Colors.orange.shade300,"3"),
                Box_1(1, Colors.orange.shade400,"4"),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Box_1(1, Colors.red.shade400,"Red"),
                Box_1(1, Colors.red.shade300,"Blue"),
                Box_1(1, Colors.red.shade200,"Green"),
                Box_1(1, Colors.red.shade100,"Grey"),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Box_1(1, Colors.green.shade100,"5"),
                Box_1(1, Colors.green.shade200,"6"),
                Box_1(1, Colors.green.shade300,"7"),
                Box_1(1, Colors.green.shade400,"8"),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Box_1(1, Colors.blue.shade400,"pink"),
                Box_1(1, Colors.blue.shade300,"black"),
                Box_1(1, Colors.blue.shade200,"purple"),
                Box_1(1, Colors.blue.shade100,"Red"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
