import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practicals/DatabaseApiCombine/UserAddEditFile.dart';

import 'DataHandlerFile.dart';

class UserInterfacePage extends StatefulWidget {
  const UserInterfacePage({super.key});

  @override
  State<UserInterfacePage> createState() => _UserInterfacePageState();
}

class _UserInterfacePageState extends State<UserInterfacePage> {
  DataHandlerFile db = DataHandlerFile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Database-Api Demo"),
        backgroundColor: Theme.of(context).primaryColorLight,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(
                  builder: (context) => UserAddEditFile(),
                ))
                    .then((value) {
                  setState(() {});
                });
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            if (snapshot.data!.isNotEmpty) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return UserAddEditFile(
                            userData: snapshot.data![index],
                          );
                        },
                      )).then((value) {
                        setState(() {});
                      });
                    },
                    child: ListTile(
                      title: Text(
                          snapshot.data![index][DataHandlerFile.USER_NAME]),
                      trailing: IconButton(
                        onPressed: () async {
                          showDialogBox(snapshot.data, index);
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: snapshot.data!.length,
              );
            } else {
              return const Center(child: Text("Data Not Found"));
            }
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
        future: db.getAllUsers(),
      ),
    );
  }

  void showDialogBox(list, index) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text("Alert!!!"),
          content: Text("Are you sure ?"),
          actions: [
            TextButton(
                onPressed: () async {
                  await db.deleteData(list[index][DataHandlerFile.USER_ID].toString())
                      .then((value) {
                    setState(() {});
                    Navigator.of(context).pop();
                  });
                },
                child: Text("Yes")),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("No"))
          ],
        );
      },
    );
  }
}
