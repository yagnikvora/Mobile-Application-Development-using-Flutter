import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Lab8i.dart';
import 'Lab8iii.dart';

class Lab8ii extends StatelessWidget {
  const Lab8ii({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Practical - A-2",
          style: GoogleFonts.nunito(),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Lab8iii(),
                ),
              );
            },
            icon: Icon(FontAwesomeIcons.arrowRight),
          ),
        ],
      ),
      body: Column(
        children: [
          Text(
            "Network Image",
            style: GoogleFonts.lato(fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.network("https://d2ms8rpfqc4h24.cloudfront.net/What_are_Flutter_and_Dart_Where_is_it_Useful1_12100cd269.jpg"),
          )
        ],
      ),
    );
  }
}
