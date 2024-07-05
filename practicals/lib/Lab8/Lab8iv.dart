import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Lab8i.dart';
import 'Lab8ii.dart';
import 'Lab8v.dart';

class Lab8iv extends StatelessWidget {
  const Lab8iv({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Practical - A-4",
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
                  builder: (context) => Lab8v(),
                ),
              );
            },
            icon: Icon(FontAwesomeIcons.arrowRight),
          ),
        ],
      ),
      body: Stack(
        children: [
          Image.network(
            "https://img.freepik.com/free-vector/purple-fluid-background_53876-99561.jpg?size=626&ext=jpg&ga=GA1.2.1302422147.1676990622&semt=ais",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Center(
            child: Text(
              "Happy Birthday",
              style: GoogleFonts.happyMonkey(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
