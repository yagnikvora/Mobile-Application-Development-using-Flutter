import 'package:flutter/material.dart';
import 'package:practicals/Lab6/Lab6iii2.dart';

class LAB6iii1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab-6B1"),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LAB6iii2(),
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
                Expanded(child: Container(color: Colors.blueAccent,)),
                Expanded(child: Container(color: Colors.amber,)),
                Expanded(child: Container(color: Colors.black54,)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.brown,)),
                Expanded(child: Container(color: Colors.cyan,)),
                Expanded(child: Container(color: Colors.orange,)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.teal,)),
                Expanded(child: Container(color: Colors.lightGreen,)),
                Expanded(child: Container(color: Colors.pink,)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
