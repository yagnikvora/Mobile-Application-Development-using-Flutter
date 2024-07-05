import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sqflite/sqflite.dart';

class DataHandlerFile {
  static final TB_NAME = "UserData";
  static final USER_ID = "UserId";
  static final USER_NAME = "UserName";
  static final API_URL = "https://660c46683a0766e85dbdd0cc.mockapi.io/flutterdemo";

  Future<Database> initDatabase() async {
    Database database = await openDatabase(
      "my_Demo_Database.db",
      version: 1,
      onCreate: (db, version) {
        db.execute("CREATE TABLE UserData(UserId TEXT,UserName TEXT)");
      },
    );
    return database;
  }

  Future<List> getAllUsers() async {
    Database db = await initDatabase();
    List<dynamic> DatabaseUsers = await db.query(TB_NAME);
    http.Response res = await http.get(Uri.parse(API_URL));
    List<dynamic> ApiUsers = jsonDecode(res.body);
    if (DatabaseUsers.length == ApiUsers.length)
      return DatabaseUsers;
    else {
      await db.delete(TB_NAME);
      for (var i = 0; i < ApiUsers.length; i++) {
        db.insert(TB_NAME,
            {USER_ID: ApiUsers[i][USER_ID], USER_NAME: ApiUsers[i][USER_NAME]});
      }
      return DatabaseUsers;
    }
  }

  Future<void> insertNewUser(map) async {
    Database db = await initDatabase();
    await http.post(Uri.parse(API_URL),body: map).then((value) async {
      await db.insert(TB_NAME, jsonDecode(value.body));
    });
  }

  Future<void> updateData(map,id) async {
    Database db = await initDatabase();
    await db.update(TB_NAME, map,where: "$USER_ID = ?",whereArgs: [id]).then((value) async {
      await http.put(Uri.parse(API_URL+"/"+id),body: map);
    });
  }

  Future<void> deleteData(id) async {
    Database db = await initDatabase();
    await db.delete(TB_NAME,where: "$USER_ID = ?",whereArgs: [id]).then((value) async {
      await http.delete(Uri.parse(API_URL + "/" + id));
    });
  }

}
