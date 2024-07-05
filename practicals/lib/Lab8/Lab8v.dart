import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Lab8i.dart';

class Lab8v extends StatefulWidget {
  const Lab8v({super.key});

  @override
  State<Lab8v> createState() => _Lab8vState();
}

class _Lab8vState extends State<Lab8v> {
  List<IconData> diceIndex = [
    FontAwesomeIcons.diceOne,
    FontAwesomeIcons.diceTwo,
    FontAwesomeIcons.diceThree,
    FontAwesomeIcons.diceFour,
    FontAwesomeIcons.diceFive,
    FontAwesomeIcons.diceSix,
  ];
  int index1 = 0,index2=0;
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Practical - B-1",
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
                  builder: (context) => Lab8i(),
                ),
              );
            },
            icon: Icon(FontAwesomeIcons.arrowRight),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Roll the Dice",
              style: GoogleFonts.lora(fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Row(
                children: [
                  Icon(diceIndex[index1], size: 200),
                  Icon(diceIndex[index2], size: 200),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    setState(
                      () {
                        index1 = random.nextInt(diceIndex.length);
                        index2 = random.nextInt(diceIndex.length);
                      },
                    );
                  },
                  child: Text(
                    "ROll",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
