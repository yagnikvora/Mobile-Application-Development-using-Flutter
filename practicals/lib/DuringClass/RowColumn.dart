import 'package:flutter/material.dart';

class RowColumnRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Row-Column",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration:
            BoxDecoration(border: Border.all(color: Colors.red, width: 5)),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Text("Center"),
              color: Colors.green,
            ),
            Container(
              child: Text(" Demo"),
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
