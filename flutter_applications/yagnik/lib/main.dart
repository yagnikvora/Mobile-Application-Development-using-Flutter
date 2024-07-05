import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "MyApp",
    home: Scaffold(
      appBar: AppBar(
        title: Text("My Flutter Application"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Text.rich(TextSpan(text: "VORA", style: TextStyle(fontSize: 20.0), children: [
          TextSpan(
              text: "YAGNIK'S",
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold)),
          TextSpan(
              text: "APP",
              style: TextStyle(fontSize: 25.0, color: Colors.blueAccent)),
        ])),
      ),
    ),
  ));
}
