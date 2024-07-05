import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practicals/myapp/LearnPage.dart';
import 'package:practicals/myapp/Register.dart';

import '../Lab7/Lab7i.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isEmail = false;
  bool _isPassword = false;
  late TextEditingController email = TextEditingController();
  late TextEditingController password = TextEditingController();

  @override
  void initState() {
    super.initState();

    email.addListener(() {
      _isEmail = email.text.isNotEmpty;
      setState(() => this._isEmail = _isEmail);
    });
    password.addListener(() {
      _isPassword = password.text.isNotEmpty;
      setState(() => this._isPassword = _isPassword);
    });
  }

  @override
  void dispose() {
    super.dispose();
    email.dispose();
    password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      backgroundColor: Color(0xFF1B1B27),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Register(),
                  ),
                );
              },
              child: Text("<"),
              style: ElevatedButton.styleFrom(
                // fixedSize: Size(20, 20),
                textStyle: TextStyle(fontSize: 30),
                // backgroundColor: Color(0xFF6242E1),
                foregroundColor: Colors.white,
                // elevation: 20,
                // shadowColor: Color(0xFF6E48F0),
                side: BorderSide(color: Colors.blueGrey, width: 1),
                alignment: Alignment.center,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                "Login",
                style: GoogleFonts.nunito(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 30),
              child: TextField(
                controller: email,
                style: GoogleFonts.nunito(color: Colors.grey, fontSize: 20),
                decoration: InputDecoration(
                  hintText: "E-main address",
                  hintStyle:
                      GoogleFonts.roboto(color: Colors.grey, fontSize: 20),
                  contentPadding: EdgeInsets.all(20),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 30),
              child: TextField(
                controller: password,
                obscureText: true,
                style: GoogleFonts.nunito(color: Colors.grey, fontSize: 20),
                decoration: InputDecoration(
                  hintText: "Your password",
                  hintStyle:
                      GoogleFonts.nunito(color: Colors.grey, fontSize: 20),
                  contentPadding: EdgeInsets.all(20),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                // inputFormatters: [
                //   LengthLimitingTextInputFormatter(8)
                // ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                onPressed: (_isEmail && _isPassword)
                    ? () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      }
                    : null,
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width *0.84, MediaQuery.of(context).size.height * 0.090),
                  textStyle: GoogleFonts.roboto(
                      fontSize: 20, fontWeight: FontWeight.bold),
                  backgroundColor: Color(0xFF6242E1),
                  disabledBackgroundColor: Colors.grey.shade700,
                  disabledForegroundColor: Colors.white60,
                  foregroundColor: Colors.white,
                  // elevation: 20,
                  // shadowColor: Color(0xFF6E48F0),
                  side: BorderSide(color: Colors.black, width: 2),
                  alignment: Alignment.center,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 115),
              child: Text(
                "Forgot Password",
                style: GoogleFonts.roboto(color: Colors.grey, fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
