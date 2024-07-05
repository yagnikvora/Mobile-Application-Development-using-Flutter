import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationDemo extends StatefulWidget {
  const NavigationDemo({super.key});

  @override
  State<NavigationDemo> createState() => _NavigationDemoState();
}

class _NavigationDemoState extends State<NavigationDemo> {

  int curindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState((){
            curindex = index;
            Fluttertoast.showToast(msg: "$curindex");
          });
        },
        unselectedItemColor: Colors.green,
        selectedItemColor: Colors.red,
        currentIndex: curindex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.tv),
            // backgroundColor: Colors.blue,
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.bookOpen),
            // backgroundColor: Colors.green,
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.solidBell),
            // backgroundColor: Colors.red,
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,size: 30),
            // backgroundColor: Colors.yellow,
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
