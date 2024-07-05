import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DemoNav extends StatefulWidget {
  const DemoNav({super.key});

  @override
  State<DemoNav> createState() => _DemoNavState();
}

class _DemoNavState extends State<DemoNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(70, 72, 105, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.tv,
                      color: Colors.purple,
                    ),
                    iconSize: 20,
                  ),
                  Text(
                    "Learn",
                    style:
                    GoogleFonts.roboto(fontSize: 15, color: Colors.purple),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.bookOpen,
                        color: Colors.grey),
                    iconSize: 20,
                  ),
                  Text(
                    "Practice",
                    style: GoogleFonts.roboto(fontSize: 15, color: Colors.grey),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.solidBell,
                        size: 25, color: Colors.grey),
                    iconSize: 20,
                  ),
                  Text(
                    "Notifications",
                    style: GoogleFonts.roboto(fontSize: 15, color: Colors.grey),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.grey,
                    ),
                    iconSize: 20,
                  ),
                  Text(
                    "Profile",
                    style: GoogleFonts.roboto(fontSize: 15, color: Colors.grey),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
