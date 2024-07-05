import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practicals/Lab7/Lab7i.dart';
import 'package:practicals/myapp/LoginPage.dart';
import 'package:practicals/myapp/SignupPage.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      backgroundColor: Color(0xFF1B1B27),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                child: Image.asset(
                  "assets/images/Register.png",
                  alignment: Alignment.topCenter,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ),
          ), // Image
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Langu",
                    style: GoogleFonts.prompt(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "App",
                    style: GoogleFonts.prompt(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.w200),
                  ),
                ],
              ),
            ),
          ), // Name
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 5, left: 70, right: 70, bottom: 20),
              child: Text(
                "Are you ready to learn languages easily in the funniest way?",
                style: GoogleFonts.roboto(
                  color: Colors.white60,
                  fontSize: 12.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ), // Description
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(330, 70),
                    textStyle: GoogleFonts.roboto(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    backgroundColor: Color(0xFF6242E1),
                    foregroundColor: Colors.white,
                    // elevation: 20,
                    // shadowColor: Color(0xFF6E48F0),
                    side: BorderSide(color: Colors.black, width: 2),
                    alignment: Alignment.center,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    )),
              ),
            ),
          ), // LoginButton
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupPage(),
                    ),
                  );
                },
                child: Text("Sign up"),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(330, 70),
                    textStyle: GoogleFonts.roboto(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    // backgroundColor: Color(0xFF6242E1),
                    foregroundColor: Colors.white,
                    // elevation: 20,
                    // shadowColor: Color(0xFF6E48F0),
                    side: BorderSide(color: Colors.white, width: 2),
                    alignment: Alignment.center,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    )),
              ),
            ),
          ), // SignUpButton
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text(
                "Browse user comments",
                style: GoogleFonts.roboto(fontSize: 14, color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
