import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:practicals/apis/UserEditAddPage.dart';
import 'package:practicals/databaseDemo/UserEditAddPageDB.dart';

import 'DataBaseFile.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  static const String UserName = "UserName";
  List<Map<dynamic, dynamic>> userNameList = [];
  static const String UserContact = "UserContact";
  static const String UserId = "UserId";
  List<Map<dynamic, dynamic>> tempList = [];

  MyDatabase db = MyDatabase();

  @override
  void initState() {
    super.initState();
    tempList.addAll(userNameList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DATABASE DEMO"),
        backgroundColor: Theme.of(context).primaryColorLight,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(
                  builder: (context) => UserAddEditPageDB(),
                ))
                    .then((value) {
                  if (value != null) {
                    setState(() {
                      userNameList.clear();
                      tempList.clear();
                    });
                  }
                });
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [
          SearchBar(
            leading: const Icon(Icons.search_sharp),
            onChanged: (value) {
              tempList.clear();
              if (value.isNotEmpty) {
                for (int i = 0; i < userNameList.length; i++) {
                  print("inside for loop");
                  if (userNameList[i]["UserName"]
                      .toLowerCase()
                      .contains(value.toString().toLowerCase())) {
                    tempList.add(userNameList[i]);
                    print(tempList);
                  }
                }
              } else {
                tempList.addAll(userNameList);
              }
              setState(() {});
            },
          ),
          Expanded(
            child: FutureBuilder(
              future: db.getAllUser(),
              builder: (context, snapshot) {
                if (snapshot.hasData && snapshot.data != null) {
                  userNameList.clear();
                  tempList.clear();
                  userNameList.addAll(snapshot.data!);
                  tempList.addAll(userNameList);
                  if (tempList.isNotEmpty) {
                    return ListView.builder(
                      itemCount: userNameList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(
                              builder: (context) => UserAddEditPageDB(
                                userData: tempList[index],
                              ),
                            ))
                                .then((value) {
                              if (value != null) {
                                setState(() {});
                              }
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            margin: const EdgeInsets.only(top: 5, bottom: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Theme.of(context).primaryColorLight),
                            child: ListTile(
                              title: Text(tempList[index][UserName]),
                              subtitle:
                                  Text(tempList[index][UserContact].toString()),
                              trailing: IconButton(
                                onPressed: () {
                                  showAlertDialog(index);
                                  // db.deleteData(snapshot.data![index]
                                  //     [MyDatabase.USER_ID]);
                                  // setState(() {});
                                  // showAlertDialog(index);
                                },
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                              ),
                              hoverColor: Colors.purpleAccent,
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    return const Center(
                      child: Text("No Data Found"),
                    );
                  }
                } else {
                  return Center(child: const CircularProgressIndicator());
                }
              },
            ),
          )
        ],
      ),
    );
  }

void showAlertDialog(index) {
  showCupertinoDialog(
    context: context,
    builder: (context) {
      return CupertinoAlertDialog(
        title: Text("Alert!"),
        content: Text("તમને ખાતરી છે કે તમે ડિલીટ કરવા માંગો છો"),
        actions: [
          TextButton(
              onPressed: () async {
                await db.deleteData(userNameList[index][UserId]);
                setState(() {});
                Navigator.pop(context);
              },
              child: Text("હા")),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("ના")),
        ],
      );
    },
  );
}
}
