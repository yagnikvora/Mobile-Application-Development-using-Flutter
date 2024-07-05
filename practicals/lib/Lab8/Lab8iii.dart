import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Lab8i.dart';
import 'Lab8iv.dart';

class Lab8iii extends StatelessWidget {
  const Lab8iii({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Practical - A-3",
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
                  builder: (context) => Lab8iv(),
                ),
              );
            },
            icon: Icon(FontAwesomeIcons.arrowRight),
          ),
        ],
      ),
      body: Stack(
        children: [
          Text(
            "Text on the Image",
            style: GoogleFonts.lora(
              fontSize: 25,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90, left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuFXpIVuqyVHuqxx4QAC6uaLAYIxHDgl5L2A&usqp=CAU",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 110, left: 150),
            child: Text(
              "Flutter",
              style: GoogleFonts.sanchez(
                fontSize: 40,
                color: Color.fromRGBO(66, 165, 245, 1),
              ),
            ),
          )
        ],
      ),
    );
  }
}
