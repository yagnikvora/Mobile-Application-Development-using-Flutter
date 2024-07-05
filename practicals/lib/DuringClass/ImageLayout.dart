import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageLayout extends StatelessWidget {
  const ImageLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Boost Post',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue.shade900,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Invite Friends, Get Free Plans",
                        style: GoogleFonts.roboto(
                            fontSize: 21, color: Colors.white),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                                textAlign: TextAlign.start,
                                maxLines: 4,
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                            ),
                            Expanded(
                              child: Icon(FontAwesomeIcons.angular,
                                  size: 130, color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.white60,
                        indent: 1,
                        thickness: 2,
                      ),
                      Text(
                        "Share your code or Link with friends",
                        style: GoogleFonts.roboto(
                            fontSize: 16, color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "12656844665",
                                      style: GoogleFonts.roboto(fontSize: 14),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 11.0),
                                      child: IconButton(
                                        icon: const Icon(FontAwesomeIcons.solidCopy,
                                            color:
                                                Color.fromRGBO(0, 83, 201, 1)),
                                        onPressed: () {
                                          Fluttertoast.showToast(
                                            msg: 'Copy Button Pressed!',
                                            timeInSecForIosWeb: 2,
                                            fontSize: 10,
                                            gravity: ToastGravity.SNACKBAR,
                                            toastLength: Toast.LENGTH_LONG,
                                          );
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: IconButton(
                                  icon: const Icon(FontAwesomeIcons.whatsapp,
                                      color:
                                      Colors.green),
                                  onPressed: () {
                                    Fluttertoast.showToast(
                                      msg: 'Whatsapp Button Pressed!',
                                      timeInSecForIosWeb: 2,
                                      fontSize: 10,
                                      gravity: ToastGravity.SNACKBAR,
                                      toastLength: Toast.LENGTH_LONG,
                                    );
                                  },
                                ),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: IconButton(
                                  icon: const Icon(FontAwesomeIcons.shareAlt,
                                      color:
                                      Color.fromRGBO(0, 83, 201, 1)),
                                  onPressed: () {
                                    Fluttertoast.showToast(
                                      msg: 'Share Button Pressed!',
                                      timeInSecForIosWeb: 2,
                                      fontSize: 10,
                                      gravity: ToastGravity.SNACKBAR,
                                      toastLength: Toast.LENGTH_LONG,
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Invite Friends, Get Free Plans",
                        style: GoogleFonts.roboto(
                            fontSize: 21, color: Colors.white),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                                textAlign: TextAlign.start,
                                maxLines: 4,
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                            ),
                            Expanded(
                              child: Icon(FontAwesomeIcons.angular,
                                  size: 130, color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.white60,
                        indent: 1,
                        thickness: 2,
                      ),
                      Text(
                        "Share your code or Link with friends",
                        style: GoogleFonts.roboto(
                            fontSize: 16, color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "12656844665",
                                      style: GoogleFonts.roboto(fontSize: 14),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(left: 11.0),
                                      child: IconButton(
                                        icon: const Icon(FontAwesomeIcons.solidCopy,
                                            color:
                                            Color.fromRGBO(0, 83, 201, 1)),
                                        onPressed: () {
                                          Fluttertoast.showToast(
                                            msg: 'Copy Button Pressed!',
                                            timeInSecForIosWeb: 2,
                                            fontSize: 10,
                                            gravity: ToastGravity.SNACKBAR,
                                            toastLength: Toast.LENGTH_LONG,
                                          );
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: IconButton(
                                  icon: const Icon(FontAwesomeIcons.whatsapp,
                                      color:
                                      Colors.green),
                                  onPressed: () {
                                    Fluttertoast.showToast(
                                      msg: 'Whatsapp Button Pressed!',
                                      timeInSecForIosWeb: 2,
                                      fontSize: 10,
                                      gravity: ToastGravity.SNACKBAR,
                                      toastLength: Toast.LENGTH_LONG,
                                    );
                                  },
                                ),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: IconButton(
                                  icon: const Icon(FontAwesomeIcons.shareAlt,
                                      color:
                                      Color.fromRGBO(0, 83, 201, 1)),
                                  onPressed: () {
                                    Fluttertoast.showToast(
                                      msg: 'Share Button Pressed!',
                                      timeInSecForIosWeb: 2,
                                      fontSize: 10,
                                      gravity: ToastGravity.SNACKBAR,
                                      toastLength: Toast.LENGTH_LONG,
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Invite Friends, Get Free Plans",
                        style: GoogleFonts.roboto(
                            fontSize: 21, color: Colors.white),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                                textAlign: TextAlign.start,
                                maxLines: 4,
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                            ),
                            Expanded(
                              child: Icon(FontAwesomeIcons.angular,
                                  size: 130, color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.white60,
                        indent: 1,
                        thickness: 2,
                      ),
                      Text(
                        "Share your code or Link with friends",
                        style: GoogleFonts.roboto(
                            fontSize: 16, color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "12656844665",
                                      style: GoogleFonts.roboto(fontSize: 14),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(left: 11.0),
                                      child: IconButton(
                                        icon: const Icon(FontAwesomeIcons.solidCopy,
                                            color:
                                            Color.fromRGBO(0, 83, 201, 1)),
                                        onPressed: () {
                                          Fluttertoast.showToast(
                                            msg: 'Copy Button Pressed!',
                                            timeInSecForIosWeb: 2,
                                            fontSize: 10,
                                            gravity: ToastGravity.SNACKBAR,
                                            toastLength: Toast.LENGTH_LONG,
                                          );
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: IconButton(
                                  icon: const Icon(FontAwesomeIcons.whatsapp,
                                      color:
                                      Colors.green),
                                  onPressed: () {
                                    Fluttertoast.showToast(
                                      msg: 'Whatsapp Button Pressed!',
                                      timeInSecForIosWeb: 2,
                                      fontSize: 10,
                                      gravity: ToastGravity.SNACKBAR,
                                      toastLength: Toast.LENGTH_LONG,
                                    );
                                  },
                                ),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: IconButton(
                                  icon: const Icon(FontAwesomeIcons.shareAlt,
                                      color:
                                      Color.fromRGBO(0, 83, 201, 1)),
                                  onPressed: () {
                                    Fluttertoast.showToast(
                                      msg: 'Share Button Pressed!',
                                      timeInSecForIosWeb: 2,
                                      fontSize: 10,
                                      gravity: ToastGravity.SNACKBAR,
                                      toastLength: Toast.LENGTH_LONG,
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Invite Friends, Get Free Plans",
                        style: GoogleFonts.roboto(
                            fontSize: 21, color: Colors.white),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                                textAlign: TextAlign.start,
                                maxLines: 4,
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                            ),
                            Expanded(
                              child: Icon(FontAwesomeIcons.angular,
                                  size: 130, color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.white60,
                        indent: 1,
                        thickness: 2,
                      ),
                      Text(
                        "Share your code or Link with friends",
                        style: GoogleFonts.roboto(
                            fontSize: 16, color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "12656844665",
                                      style: GoogleFonts.roboto(fontSize: 14),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(left: 11.0),
                                      child: IconButton(
                                        icon: const Icon(FontAwesomeIcons.solidCopy,
                                            color:
                                            Color.fromRGBO(0, 83, 201, 1)),
                                        onPressed: () {
                                          Fluttertoast.showToast(
                                            msg: 'Copy Button Pressed!',
                                            timeInSecForIosWeb: 2,
                                            fontSize: 10,
                                            gravity: ToastGravity.SNACKBAR,
                                            toastLength: Toast.LENGTH_LONG,
                                          );
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: IconButton(
                                  icon: const Icon(FontAwesomeIcons.whatsapp,
                                      color:
                                      Colors.green),
                                  onPressed: () {
                                    Fluttertoast.showToast(
                                      msg: 'Whatsapp Button Pressed!',
                                      timeInSecForIosWeb: 2,
                                      fontSize: 10,
                                      gravity: ToastGravity.SNACKBAR,
                                      toastLength: Toast.LENGTH_LONG,
                                    );
                                  },
                                ),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: IconButton(
                                  icon: const Icon(FontAwesomeIcons.shareAlt,
                                      color:
                                      Color.fromRGBO(0, 83, 201, 1)),
                                  onPressed: () {
                                    Fluttertoast.showToast(
                                      msg: 'Share Button Pressed!',
                                      timeInSecForIosWeb: 2,
                                      fontSize: 10,
                                      gravity: ToastGravity.SNACKBAR,
                                      toastLength: Toast.LENGTH_LONG,
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Invite Friends, Get Free Plans",
                        style: GoogleFonts.roboto(
                            fontSize: 21, color: Colors.white),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                                textAlign: TextAlign.start,
                                maxLines: 4,
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                            ),
                            Expanded(
                              child: Icon(FontAwesomeIcons.angular,
                                  size: 130, color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.white60,
                        indent: 1,
                        thickness: 2,
                      ),
                      Text(
                        "Share your code or Link with friends",
                        style: GoogleFonts.roboto(
                            fontSize: 16, color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "12656844665",
                                      style: GoogleFonts.roboto(fontSize: 14),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(left: 11.0),
                                      child: IconButton(
                                        icon: const Icon(FontAwesomeIcons.solidCopy,
                                            color:
                                            Color.fromRGBO(0, 83, 201, 1)),
                                        onPressed: () {
                                          Fluttertoast.showToast(
                                            msg: 'Copy Button Pressed!',
                                            timeInSecForIosWeb: 2,
                                            fontSize: 10,
                                            gravity: ToastGravity.SNACKBAR,
                                            toastLength: Toast.LENGTH_LONG,
                                          );
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: IconButton(
                                  icon: const Icon(FontAwesomeIcons.whatsapp,
                                      color:
                                      Colors.green),
                                  onPressed: () {
                                    Fluttertoast.showToast(
                                      msg: 'Whatsapp Button Pressed!',
                                      timeInSecForIosWeb: 2,
                                      fontSize: 10,
                                      gravity: ToastGravity.SNACKBAR,
                                      toastLength: Toast.LENGTH_LONG,
                                    );
                                  },
                                ),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: IconButton(
                                  icon: const Icon(FontAwesomeIcons.shareAlt,
                                      color:
                                      Color.fromRGBO(0, 83, 201, 1)),
                                  onPressed: () {
                                    Fluttertoast.showToast(
                                      msg: 'Share Button Pressed!',
                                      timeInSecForIosWeb: 2,
                                      fontSize: 10,
                                      gravity: ToastGravity.SNACKBAR,
                                      toastLength: Toast.LENGTH_LONG,
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
