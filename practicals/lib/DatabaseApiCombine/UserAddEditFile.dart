import 'package:flutter/material.dart';
import 'package:practicals/DatabaseApiCombine/DataHandlerFile.dart';

class UserAddEditFile extends StatelessWidget {
  Map<String, dynamic> userMap = {};

  UserAddEditFile({dynamic userData}) {
    if (userData == null) {
      userMap[DataHandlerFile.USER_NAME] = "";
      userMap[DataHandlerFile.USER_ID] = "";
    } else {
      userMap[DataHandlerFile.USER_NAME] = userData[DataHandlerFile.USER_NAME];
      userMap[DataHandlerFile.USER_ID] = userData[DataHandlerFile.USER_ID].toString();
    }
  }

  DataHandlerFile db = DataHandlerFile();
  TextEditingController nameController = TextEditingController();
  GlobalKey<FormState> _formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "${userMap[DataHandlerFile.USER_ID] != "" ? "Edit" : "Add"} User"),
      ),
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Plese Enter UserName";
                }
              },
              onChanged: (value) {
                userMap[DataHandlerFile.USER_NAME] = value;
              },
              controller: TextEditingController(
                  text: userMap[DataHandlerFile.USER_NAME]),
              decoration: const InputDecoration(
                  hintText: "Enter Name", labelText: "Enter Name"),
            ),
            ElevatedButton(
                onPressed: () async {
                  if (_formkey.currentState!.validate()) {
                    if (userMap[DataHandlerFile.USER_ID] == "") {
                      await db.insertNewUser(userMap).then((value) {
                        Navigator.of(context).pop(true);
                      });
                    } else {
                      await db
                          .updateData(userMap, userMap["UserId"])
                          .then((value) {
                        Navigator.of(context).pop(true);
                      });
                    }
                  }
                },
                child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
