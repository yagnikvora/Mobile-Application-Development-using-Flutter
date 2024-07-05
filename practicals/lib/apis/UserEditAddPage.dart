import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practicals/apis/ApiExec.dart';

class UserAddEditPage extends StatelessWidget {
  Map<dynamic, dynamic>? userData;

  UserAddEditPage({this.userData}) {
    userNameController.text =
        userData != null ? userData![ApiExecutor.UserName] : "";
    userImageController.text =
        userData != null ? userData![ApiExecutor.UserImage] : "";
    userMobileController.text =
        userData != null ? userData![ApiExecutor.UserContact] : "";
  }

  ApiExecutor api = ApiExecutor();
  GlobalKey<FormState> _formkey = GlobalKey();

  TextEditingController userNameController = TextEditingController();
  TextEditingController userImageController = TextEditingController();
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
              decoration: InputDecoration(
                  hintText: "Enter Name", labelText: "Enter Name"),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: userMobileController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter Mobile No";
                }
              },
              decoration: InputDecoration(
                  hintText: "Enter Mobile No", labelText: "Enter Mobile No"),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: userImageController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter Image";
                }
              },
              decoration: InputDecoration(
                  hintText: "Enter Image", labelText: "Enter Image"),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () async {
                  if (_formkey.currentState!.validate()) {
                    // int UserId = 0;
                    if (userData == null) {
                      Map<String, dynamic> map = {};
                      map[ApiExecutor.UserName] =
                          userNameController.text.toString();
                      map[ApiExecutor.UserContact] =
                          userMobileController.text.toString();
                      map[ApiExecutor.UserImage] =
                          userImageController.text.toString();

                      Map<dynamic,dynamic> userMap = await api.insertData(map);

                      if(userMap != null){
                        Navigator.of(context).pop(true);
                      }
                    }else{
                      userData![ApiExecutor.UserName] = userNameController.text.toString();
                      userData![ApiExecutor.UserContact] = userMobileController.text.toString();
                      userData![ApiExecutor.UserImage] = userImageController.text.toString();
                      Map<dynamic,dynamic> userMap = await api.updateData(userData!);
                      if(userMap != null){
                        Navigator.of(context).pop(true);
                      }
                    }
                  }
                },
                child: Text("Submit")),
          ],
        ),
      ),
    );
  }
}
