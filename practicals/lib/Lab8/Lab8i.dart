import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practicals/Lab8/Lab8ii.dart';

import '../Lab6/LAB6i.dart';

class Lab8i extends StatelessWidget {
  const Lab8i({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Practical - A-1",
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
                  builder: (context) => Lab8ii(),
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
            "Asset Image",
            style: GoogleFonts.lato(fontSize: 30),
          ),
          Image.asset("assets/images/grow.jpg"),
        ],
      ),
    );
  }
}
