import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:practicals/DatabaseApiCombine/UserInterfacePage.dart';
import 'package:practicals/During_lab/Layout1.dart';
import 'package:practicals/During_lab/Layout3.dart';
import 'package:practicals/Lab6/LAB6i.dart';
import 'package:practicals/apis/ApiEntryPage.dart';
import 'package:practicals/apis/ApiExec.dart';
import 'package:practicals/databaseDemo/UserDetails.dart';
import 'package:practicals/myapp/DemoNav.dart';
import 'package:practicals/myapp/Register.dart';
import 'package:practicals/myapp/SignupPage.dart';
import 'DuringClass/Components.dart';
import 'DuringClass/ImageLayout.dart';
import 'DuringClass/RowColumn.dart';
import 'During_lab/Layout.dart';
import 'During_lab/Layout2.dart';
import 'During_lab/Layout4.dart';
import 'Lab7/Lab7i.dart';
import 'Lab8/Lab8i.dart';
import 'Lab7/Lab7B.dart';
import 'myapp/Navigation.dart';
import 'myapp/Splash.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Application',
      home: UserInterfacePage(),
    );
  }
}
// class demos extends StatefulWidget {
//   const demos({super.key});
//
//   @override
//   State<demos> createState() => _demosState();
// }
//
// class _demosState extends State<demos> {
//
//   @override
//   Widget build(BuildContext context) {
//     List<dynamic> UserList=[];
//     return Scaffold(
//         body:FutureBuilder(
//           future: ApiExecutor().GetAllUsingApi(),
//           builder: (context, snapshot) {
//            if(snapshot.hasData && snapshot.data!=null){
//              UserList.clear();
//              UserList.addAll(snapshot.data as Iterable<dynamic>);
//              return ListView.builder(itemCount: snapshot.data!.length,itemBuilder:(context, index) {
//                return GestureDetector(onTap: (){
//                  ApiExecutor().deleteData(UserList[index]["id"]).then((value) {
//                    setState(() {
//                    });
//                  });
//                },child: Text(UserList[index]["name"],style: TextStyle(fontSize: 25),));
//              },);
//
//
//            }
//             return Column();
//           },
//         )
//     );
//   }
// }
//
