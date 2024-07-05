import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practicals/apis/ApiExec.dart';
import 'package:practicals/databaseDemo/DataBaseFile.dart';

class UserAddEditPageDB extends StatelessWidget {
  Map<dynamic, dynamic>? userData;

  UserAddEditPageDB({this.userData}) {
    userNameController.text =
        userData != null ? userData![MyDatabase.USER_NAME] : "";
    userMobileController.text =
        userData != null ? userData![MyDatabase.USER_CONTACT].toString() : "";
  }

  MyDatabase db = MyDatabase();
  GlobalKey<FormState> _formkey = GlobalKey();

  TextEditingController userNameController = TextEditingController();
  TextEditingController userMobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${userData != null ? "Edit" : "Add"} User"),
      ),
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            TextFormField(
              controller: userNameController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter Name ";
                }
              },
              decoration: const InputDecoration(
                  hintText: "Enter Name", labelText: "Enter Name"),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: userMobileController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter Mobile No";
                }
              },
              decoration: const InputDecoration(
                  hintText: "Enter Mobile No", labelText: "Enter Mobile No"),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () async {
                  if (_formkey.currentState!.validate()) {
                    if (userData == null) {
                      Map<String, dynamic> map = {};
                      map[ApiExecutor.UserName] =
                          userNameController.text.toString();
                      map[ApiExecutor.UserContact] =
                          userMobileController.text.toString();

                      int pk = await db.insertNewUser(userNameController.text.toString(),int.parse(userMobileController.text.toString()) );

                      if(pk > 0){
                        Navigator.of(context).pop(true);
                      }
                    }else{
                      int pk  = await db.updateData(userNameController.text.toString(),int.parse(userMobileController.text.toString()),userData![MyDatabase.USER_ID]);
                      if(pk > 0){
                        Navigator.of(context).pop(true);
                      }
                    }
                  }
                },
                child: const Text("Submit")),
          ],
        ),
      ),
    );
  }
}
