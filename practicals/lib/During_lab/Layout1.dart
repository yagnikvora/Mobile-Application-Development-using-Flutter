import 'package:flutter/material.dart';

import 'Layout2.dart';

class Layout1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout-1"),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Layout2())); //push
            },
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: Center(
                child: Text(
                  "Yagnik",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.blue,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.purple,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.teal,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blueGrey,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.brown,
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
