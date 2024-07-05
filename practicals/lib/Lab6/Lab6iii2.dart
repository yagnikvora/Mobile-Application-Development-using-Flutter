import 'package:flutter/material.dart';

import 'LAB6i.dart';

class LAB6iii2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab-6B2"),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Lab6i(),
                  ),
                );
              },
              icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Color.fromARGB(127, 127, 127,1),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color.fromRGBO(255, 127, 39,1),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.deepPurple,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.cyan,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.teal,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.lightGreen,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.pink,
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
