import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<String> list = ["English", "Hindi", "Gujarati", "Marathi", "Tamil"];

class _HomePageState extends State<HomePage> {
  bool _isList = true;
  String dropdownValue = list.first;
  int read = 74, listen = 59, speak = 32, grammer = 53;
  int index = 0;
  String Lang = list.first;
  String field = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(70, 72, 105, 1),
      // resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              // color: Color.fromRGBO(70, 72, 105, 1),
              color: Color.fromRGBO(36, 35, 52, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
          ),
          Container(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(70, 72, 105, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 45.0, left: 45, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DropdownMenu(
                          textStyle: const TextStyle(
                              color: Colors.white60, fontSize: 18),
                          trailingIcon: const Icon(
                            Icons.keyboard_arrow_down_sharp,
                            size: 30,
                            color: Colors.white54,
                          ),
                          inputDecorationTheme: InputDecorationTheme(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 1),
                          ),
                          initialSelection: list.first,
                          onSelected: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              dropdownValue = value!;
                            });
                          },
                          dropdownMenuEntries: list
                              .map<DropdownMenuEntry<String>>((String value) {
                            return DropdownMenuEntry<String>(
                                value: value, label: value);
                          }).toList(),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset(
                            "assets/images/bitmoji.png",
                            width: 45,
                            height: 45,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello Yagnik",
                          style: GoogleFonts.cabin(
                              color: Colors.white, fontSize: 22),
                        ),
                        Text(
                          "Continue to ${dropdownValue}!",
                          style: GoogleFonts.cabin(
                              color: Colors.white, fontSize: 32),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 270.0, left: 30),
            child: Row(
              children: [
                Text(
                  "Your Lessons",
                  style: GoogleFonts.nunito(fontSize: 22, color: Colors.white),
                ),
                const SizedBox(
                  width: 140,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _isList = false;
                    });
                  },
                  icon: const Icon(
                    Icons.grid_view_sharp,
                    color: Colors.white54,
                    size: 20,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _isList = true;
                    });
                  },
                  icon: const Icon(
                    FontAwesomeIcons.equals,
                    color: Colors.white54,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
          if (_isList == true) ListViewContent() else GridViewContent(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(70, 72, 105, 1),
        selectedLabelStyle: const TextStyle(color: Colors.red),
        showUnselectedLabels: true,
        selectedIconTheme: const IconThemeData(color: Color(0xffc508ff)),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        onTap: (value) {
          setState(() {
            index = value;
          });
          Fluttertoast.showToast(
              msg: "Navigation Button Clicked",
              fontSize: 14,
              textColor: Colors.white,
              toastLength: Toast.LENGTH_LONG);
        },
        currentIndex: index,
        selectedItemColor: const Color(0xffc508ff),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.tv, size: 20),
              label: "Learn",
              backgroundColor: Color.fromRGBO(70, 72, 105, 1)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_outline_sharp,
                size: 25,
              ),
              label: "Practice",
              backgroundColor: Color.fromRGBO(70, 72, 105, 1)),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.bell,
                size: 25,
              ),
              label: "Notification",
              backgroundColor: Color.fromRGBO(70, 72, 105, 1)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                size: 30,
              ),
              label: "Profile",
              backgroundColor: Color.fromRGBO(70, 72, 105, 1)),
        ],
      ),
    );
  }

  Widget ListViewContent() {
    return Padding(
      padding: const EdgeInsets.only(top: 330.0, left: 30),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListElement(
              task: "Reading",
              imgPath: "assets/images/read.png",
              per: read,
              progressColor: const Color(0xff37ff00),
              onTaskTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  // enableDrag: true,
                  context: context,
                  builder: (context) {
                    return StatefulBuilder(
                      builder: (context, setState) {
                        return SingleChildScrollView(
                          child: Container(
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(27),
                                    topRight: Radius.circular(27)),
                                color: Color.fromRGBO(36, 35, 52, 1)),
                            padding: const EdgeInsets.all(30),
                            // color: const Color.fromRGBO(36, 35, 52, 1),
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text(
                                    "Reading",
                                    style: GoogleFonts.nunito(
                                        fontSize: 25, color: Colors.white),
                                  ),
                                  leading:
                                  Image.asset("assets/images/read.png"),
                                  subtitle:
                                  Text("You completed ${read}% of reading"),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: [
                                    ModelSheetItem(
                                        icon: Icons.list_alt,
                                        fieldName: "Read",
                                        onItemPressed: () {
                                          setState(
                                                () {
                                              field = "Read";
                                            },
                                          );
                                        },
                                        hpadding: 18.0,
                                        fName: field
                                    ),
                                    ModelSheetItem(
                                        icon: Icons.translate,
                                        fieldName: "Translate",
                                        onItemPressed: () {
                                          setState(
                                                () {
                                              field = "Translate";
                                            },
                                          );
                                        },
                                        hpadding: 10.0,
                                        fName: field
                                    ),
                                    ModelSheetItem(
                                        icon: Icons.copy_all,
                                        fieldName: "Match",
                                        onItemPressed: () {
                                          setState(
                                                () {
                                              field = "Match";
                                            },
                                          );
                                        },
                                        hpadding: 18.0,
                                        fName: field
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Fluttertoast.showToast(
                                        msg: "Start button Click",
                                        toastLength: Toast.LENGTH_SHORT,
                                        fontSize: 15,
                                        textColor: Colors.white,
                                      );
                                    },
                                    child: const Text("Start"),
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(
                                          MediaQuery.of(context).size.width *
                                              0.84,
                                          MediaQuery.of(context).size.height *
                                              0.090),
                                      textStyle: GoogleFonts.roboto(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                      backgroundColor: const Color(0xFF6242E1),
                                      disabledBackgroundColor:
                                      Colors.grey.shade700,
                                      disabledForegroundColor: Colors.white60,
                                      foregroundColor: Colors.white,
                                      // elevation: 20,
                                      // shadowColor: Color(0xFF6E48F0),
                                      side: const BorderSide(
                                          color: Colors.black, width: 2),
                                      alignment: Alignment.center,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(18)),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      ("Your friends progress"),
                                      style: GoogleFonts.nunito(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "All",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                    )
                                  ],
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      CircularPercentIndicatorItem(
                                          image: "assets/images/bitmoji/1.png",
                                          name: "Jack",
                                          percentage: 0.6),
                                      CircularPercentIndicatorItem(
                                          image: "assets/images/bitmoji/2.png",
                                          name: "Alison",
                                          percentage: 0.35),
                                      CircularPercentIndicatorItem(
                                          image: "assets/images/bitmoji/3.png",
                                          name: "William",
                                          percentage: 0.5),
                                      CircularPercentIndicatorItem(
                                          image: "assets/images/bitmoji/4.png",
                                          name: "Jennifer",
                                          percentage: 0.65),
                                      CircularPercentIndicatorItem(
                                          image: "assets/images/bitmoji/5.png",
                                          name: "serah",
                                          percentage: 0.47),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
            ListElement(
                task: "Listening",
                imgPath: "assets/images/listen.png",
                per: listen,
                progressColor: const Color(0xff0053c9),
                onTaskTap: () {
                  setState(() {
                    listen += 1;
                  });
                  Fluttertoast.showToast(
                    msg: "Listening Clicked",
                    fontSize: 14,
                    toastLength: Toast.LENGTH_LONG,
                  );
                }),
            ListElement(
                task: "Speaking",
                imgPath: "assets/images/speak.png",
                per: speak,
                progressColor: const Color(0xffff0100),
                onTaskTap: () {
                  setState(() {
                    speak += 1;
                  });
                  Fluttertoast.showToast(
                    msg: "Speaking Clicked",
                    fontSize: 14,
                    toastLength: Toast.LENGTH_LONG,
                  );
                }),
            ListElement(
                task: "Grammer",
                imgPath: "assets/images/grammer.png",
                per: grammer,
                progressColor: const Color(0xfff8ff01),
                onTaskTap: () {
                  setState(() {
                    grammer += 1;
                  });
                  Fluttertoast.showToast(
                    msg: "Grammer Clicked",
                    fontSize: 14,
                    toastLength: Toast.LENGTH_LONG,
                  );
                }),
          ],
        ),
      ),
    );
  }

  Widget GridViewContent() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 305.0,
        left: 30,
      ),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.9,
        children: [
          GridElement(
              imgPath: "assets/images/read.png",
              task: "Reading",
              per: read,
              progressColor: const Color(0xff37ff00),
              onTaskTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  // enableDrag: true,
                  context: context,
                  builder: (context) {
                    return StatefulBuilder(
                      builder: (context, setState) {
                        return SingleChildScrollView(
                          child: Container(
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(27),
                                    topRight: Radius.circular(27)),
                                color: Color.fromRGBO(36, 35, 52, 1)),
                            padding: const EdgeInsets.all(30),
                            // color: const Color.fromRGBO(36, 35, 52, 1),
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text(
                                    "Reading",
                                    style: GoogleFonts.nunito(
                                        fontSize: 25, color: Colors.white),
                                  ),
                                  leading:
                                  Image.asset("assets/images/read.png"),
                                  subtitle:
                                  Text("You completed ${read}% of reading"),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: [
                                    ModelSheetItem(
                                      icon: Icons.list_alt,
                                      fieldName: "Read",
                                      onItemPressed: () {
                                        setState(
                                              () {
                                            field = "Read";
                                          },
                                        );
                                      },
                                      hpadding: 18.0,
                                      fName: field
                                    ),
                                    ModelSheetItem(
                                      icon: Icons.translate,
                                      fieldName: "Translate",
                                      onItemPressed: () {
                                        setState(
                                              () {
                                            field = "Translate";
                                          },
                                        );
                                      },
                                      hpadding: 10.0,
                                      fName: field
                                    ),
                                    ModelSheetItem(
                                      icon: Icons.copy_all,
                                      fieldName: "Match",
                                      onItemPressed: () {
                                        setState(
                                              () {
                                            field = "Match";
                                          },
                                        );
                                      },
                                      hpadding: 18.0,
                                      fName: field
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Fluttertoast.showToast(
                                        msg: "Start button Click",
                                        toastLength: Toast.LENGTH_SHORT,
                                        fontSize: 15,
                                        textColor: Colors.white,
                                      );
                                    },
                                    child: const Text("Start"),
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(
                                          MediaQuery.of(context).size.width *
                                              0.84,
                                          MediaQuery.of(context).size.height *
                                              0.090),
                                      textStyle: GoogleFonts.roboto(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                      backgroundColor: const Color(0xFF6242E1),
                                      disabledBackgroundColor:
                                      Colors.grey.shade700,
                                      disabledForegroundColor: Colors.white60,
                                      foregroundColor: Colors.white,
                                      // elevation: 20,
                                      // shadowColor: Color(0xFF6E48F0),
                                      side: const BorderSide(
                                          color: Colors.black, width: 2),
                                      alignment: Alignment.center,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(18)),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      ("Your friends progress"),
                                      style: GoogleFonts.nunito(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "All",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                    )
                                  ],
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      CircularPercentIndicatorItem(
                                          image: "assets/images/bitmoji.png",
                                          name: "Jack",
                                          percentage: 0.6),
                                      CircularPercentIndicatorItem(
                                          image: "assets/images/bitmoji.png",
                                          name: "Alison",
                                          percentage: 0.35),
                                      CircularPercentIndicatorItem(
                                          image: "assets/images/bitmoji.png",
                                          name: "William",
                                          percentage: 0.5),
                                      CircularPercentIndicatorItem(
                                          image: "assets/images/bitmoji.png",
                                          name: "Jennifer",
                                          percentage: 0.65),
                                      CircularPercentIndicatorItem(
                                          image: "assets/images/bitmoji.png",
                                          name: "serah",
                                          percentage: 0.47),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                );
              }),
          GridElement(
              imgPath: "assets/images/listen.png",
              task: "Listening",
              per: listen,
              progressColor: const Color(0xff0053c9),
              onTaskTap: () {
                setState(() {
                  listen += 1;
                });
                Fluttertoast.showToast(
                  msg: "Listening Clicked",
                  fontSize: 14,
                  toastLength: Toast.LENGTH_LONG,
                );
              }),
          GridElement(
              imgPath: "assets/images/speak.png",
              task: "Speaking",
              per: speak,
              progressColor: const Color(0xffff0100),
              onTaskTap: () {
                setState(() {
                  speak += 1;
                });
                Fluttertoast.showToast(
                  msg: "Speaking Clicked",
                  fontSize: 14,
                  toastLength: Toast.LENGTH_LONG,
                );
              }),
          GridElement(
              imgPath: "assets/images/grammer.png",
              task: "Grammer",
              per: grammer,
              progressColor: const Color(0xfff8ff01),
              onTaskTap: () {
                setState(() {
                  grammer += 1;
                });
                Fluttertoast.showToast(
                  msg: "Grammer Clicked",
                  fontSize: 14,
                  toastLength: Toast.LENGTH_LONG,
                );
              }),
        ],
      ),
    );
  }

  Widget GridElement(
      {required imgPath,
      required task,
      required per,
      required progressColor,
      required onTaskTap}) {
    return InkWell(
      onTap: onTaskTap,
      child: Container(
        margin: const EdgeInsets.only(right: 30, bottom: 17),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(70, 72, 105, 1),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20.0, left: 13, bottom: 8, right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                imgPath,
                width: 60,
                height: 50,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                task,
                style: GoogleFonts.nunito(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "You completed ${per % 101}%",
                style: GoogleFonts.nunito(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              LinearPercentIndicator(
                padding: const EdgeInsets.all(0),
                width: 134.0,
                lineHeight: 8.0,
                percent: (per / 100) % 1.01,
                backgroundColor: Colors.black38,
                progressColor: progressColor,
                barRadius: const Radius.circular(5),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget ListElement(
      {required task,
      required imgPath,
      required per,
      required progressColor,
      required onTaskTap}) {
    return InkWell(
      onTap: onTaskTap,
      child: Container(
        margin: const EdgeInsets.only(right: 30, bottom: 17),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(70, 72, 105, 1),
          borderRadius: BorderRadius.circular(25),
        ),
        child: ListTile(
          title: Text(
            task,
            style: GoogleFonts.nunito(color: Colors.white, fontSize: 20),
          ),
          leading: Image.asset(
            imgPath,
            width: 50,
            height: 50,
          ),
          subtitle: Text(
            "You complated ${per % 101}%",
            style: const TextStyle(color: Colors.grey),
          ),
          trailing: Padding(
            padding: const EdgeInsets.all(0.0),
            child: CircularPercentIndicator(
              radius: 20.0,
              lineWidth: 30.0,
              percent: (per / 100) % 1.01,
              backgroundColor: Colors.black26,
              progressColor: progressColor,
            ),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        ),
      ),
    );
  }
}

Widget ModelSheetItem(
    {required icon,
    required fieldName,
    required onItemPressed,
    required hpadding,required fName}) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Colors.grey),
        color: (fName == fieldName)
            ? const Color.fromRGBO(
            255, 255, 255, 0.2)
            : null,),
    child: TextButton(
      onPressed: onItemPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: hpadding, vertical: 10),
        child: Column(
          children: [
            Icon(
              icon,
              size: 35,
              color: (fName == fieldName)
                  ? Colors.red
                  : Colors.white,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              fieldName,
              style: const TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    ),
  );
}

Widget CircularPercentIndicatorItem(
    {required percentage, required name, required image}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: CircularPercentIndicator(
      radius: 32.0,
      lineWidth: 5.0,
      percent: percentage,
      footer: Text(
        name,
        style: GoogleFonts.nunito(color: Colors.white, fontSize: 15),
      ),
      center: Container(
        decoration: BoxDecoration(color: Colors.grey.shade700,borderRadius: BorderRadius.circular(30)),
        child: Image.asset(
          image,
          width: 50,
          height: 50,
        ),
      ),
      backgroundColor: Colors.transparent,
      progressColor: Colors.greenAccent,
    ),
  );
}

// Future Abc({required context,required activity,required per,required activityImage,required doActivity}) {
//   return showModalBottomSheet(
//     isScrollControlled: true,
//     // enableDrag: true,
//     context: context,
//     builder: (context) {
//       return StatefulBuilder(
//         builder: (context, setState) {
//           return SingleChildScrollView(
//             child: Container(
//               decoration: const BoxDecoration(
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(27),
//                       topRight: Radius.circular(27)),
//                   color: Color.fromRGBO(36, 35, 52, 1)),
//               padding: const EdgeInsets.all(30),
//               // color: const Color.fromRGBO(36, 35, 52, 1),
//               child: Column(
//                 children: [
//                   ListTile(
//                     title: Text(
//                       activity,
//                       style: GoogleFonts.nunito(
//                           fontSize: 25, color: Colors.white),
//                     ),
//                     leading:
//                     Image.asset(activityImage),
//                     subtitle:
//                     Text("You completed ${per}% of ${activity}"),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     mainAxisAlignment:
//                     MainAxisAlignment.spaceAround,
//                     children: [
//                       ModelSheetItem(
//                           icon: Icons.list_alt,
//                           fieldName: doActivity,
//                           onItemPressed: () {
//                             setState(
//                                   () {
//                                 field = "Read";
//                               },
//                             );
//                           },
//                           hpadding: 18.0,
//                           fName: field
//                       ),
//                       ModelSheetItem(
//                           icon: Icons.translate,
//                           fieldName: "Translate",
//                           onItemPressed: () {
//                             setState(
//                                   () {
//                                 field = "Translate";
//                               },
//                             );
//                           },
//                           hpadding: 10.0,
//                           fName: field
//                       ),
//                       ModelSheetItem(
//                           icon: Icons.copy_all,
//                           fieldName: "Match",
//                           onItemPressed: () {
//                             setState(
//                                   () {
//                                 field = "Match";
//                               },
//                             );
//                           },
//                           hpadding: 18.0,
//                           fName: field
//                       ),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 25,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 20.0),
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Fluttertoast.showToast(
//                           msg: "Start button Click",
//                           toastLength: Toast.LENGTH_SHORT,
//                           fontSize: 15,
//                           textColor: Colors.white,
//                         );
//                       },
//                       child: const Text("Start"),
//                       style: ElevatedButton.styleFrom(
//                         minimumSize: Size(
//                             MediaQuery.of(context).size.width *
//                                 0.84,
//                             MediaQuery.of(context).size.height *
//                                 0.090),
//                         textStyle: GoogleFonts.roboto(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold),
//                         backgroundColor: const Color(0xFF6242E1),
//                         disabledBackgroundColor:
//                         Colors.grey.shade700,
//                         disabledForegroundColor: Colors.white60,
//                         foregroundColor: Colors.white,
//                         // elevation: 20,
//                         // shadowColor: Color(0xFF6E48F0),
//                         side: const BorderSide(
//                             color: Colors.black, width: 2),
//                         alignment: Alignment.center,
//                         shape: const RoundedRectangleBorder(
//                           borderRadius: BorderRadius.all(
//                               Radius.circular(18)),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 30,
//                   ),
//                   Row(
//                     mainAxisAlignment:
//                     MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         ("Your friends progress"),
//                         style: GoogleFonts.nunito(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17),
//                       ),
//                       TextButton(
//                         onPressed: () {},
//                         child: const Text(
//                           "All",
//                           style: TextStyle(
//                               fontSize: 15, color: Colors.grey),
//                         ),
//                       )
//                     ],
//                   ),
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         CircularPercentIndicatorItem(
//                             image: "assets/images/bitmoji.png",
//                             name: "Jack",
//                             percentage: 0.6),
//                         CircularPercentIndicatorItem(
//                             image: "assets/images/bitmoji.png",
//                             name: "Alison",
//                             percentage: 0.35),
//                         CircularPercentIndicatorItem(
//                             image: "assets/images/bitmoji.png",
//                             name: "William",
//                             percentage: 0.5),
//                         CircularPercentIndicatorItem(
//                             image: "assets/images/bitmoji.png",
//                             name: "Jennifer",
//                             percentage: 0.65),
//                         CircularPercentIndicatorItem(
//                             image: "assets/images/bitmoji.png",
//                             name: "serah",
//                             percentage: 0.47),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           );
//         },
//       );
//     },
//   );
// }
