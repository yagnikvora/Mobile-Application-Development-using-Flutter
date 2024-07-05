import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Lab7B.dart';

class Lab7ii extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lab 7 A-2",
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
                    builder: (context) => Lab7B(),
                  ),
                );
              },
              icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              "This is my Data",
              style: GoogleFonts.vampiroOne(
                fontSize: 30,
                color: Colors.red,
                backgroundColor: Colors.yellow,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
