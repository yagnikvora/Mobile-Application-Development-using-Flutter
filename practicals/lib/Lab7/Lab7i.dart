import 'package:flutter/material.dart';
import 'package:practicals/Lab7/LAB7ii.dart';

class Lab7i extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lab 7 A-1",
          style: TextStyle(fontSize: 30, color: Colors.greenAccent),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Lab7ii(),
                  ),
                );
              },
              icon: Icon(Icons.arrow_forward),color: Colors.red,)
        ],
      ),
      body: Container(
        child: Center(
          child: Text(
            "Hello World",
            style: TextStyle(
                fontSize: 30,
                color: Colors.purple,
                backgroundColor: Colors.limeAccent,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
