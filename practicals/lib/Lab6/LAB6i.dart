import 'package:flutter/material.dart';

import 'LAB6ii.dart';

class Lab6i extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab-6A1"),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Lab6ii(),
                  ),
                );
              },
              icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
