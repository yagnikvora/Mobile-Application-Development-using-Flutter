import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practicals/apis/ApiExec.dart';
import 'package:practicals/apis/UserEditAddPage.dart';

class ApiInterface extends StatefulWidget {
  const ApiInterface({super.key});

  @override
  State<ApiInterface> createState() => _ApiInterfaceState();
}

class _ApiInterfaceState extends State<ApiInterface> {
  static const String UserName = "UserName";
  static const String UserImage = "UserImage";
  List<dynamic> userNameList = [];
  static const String UserMobile = "UserMobile";
  static const String UserId = "UserId";
  List<dynamic> tempList = [];

  ApiExecutor api = ApiExecutor();

  // MyDatabase db = MyDatabase();

  @override
  void initState() {
    super.initState();
    tempList.addAll(userNameList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API DEMO"),
        backgroundColor: Theme.of(context).primaryColorLight,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => UserAddEditPage(),
                )).then((value){
                  if(value != null){
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
                  if (userNameList[i]["UserName"].toLowerCase().contains(value.toString().toLowerCase())) {
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
              future: api.getAllUsingApi(),
              builder: (context, snapshot) {
                // print(snapshot.data);
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
                              builder: (context) => UserAddEditPage(
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
                              subtitle: Text(tempList[index][UserMobile]),
                              leading: CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    NetworkImage(tempList[index][UserImage]),
                              ),
                              trailing: IconButton(
                                onPressed: () {
                                  showAlertDialog(index);
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
                  return Center(
                      child: const CircularProgressIndicator());
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
                  await api.deleteData(userNameList[index][UserId]);
                  setState(() {});
                  Navigator.pop(context);
                },
                child: Text("YES")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("NO")),
          ],
        );
      },
    );
  }
}
