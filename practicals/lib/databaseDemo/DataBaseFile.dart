
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MyDatabase {
  static final TB_NAME = "Users";
  static final USER_NAME = "UserName";
  static final USER_CONTACT = "UserContact";
  static final USER_ID = "UserId";

  Future<Database> initDatabase() async {
    String databasePath = await getDatabasesPath();
    Database database = await openDatabase(
      "${databasePath}/my_database.db",
      version: 1,
      onCreate: (db, version) {

        db.execute(
            "CREATE TABLE Users(UserId INTEGER PRIMARY KEY AUTOINCREMENT,UserName TEXT,UserContact NUMERIC)");
      },
    );
    return database;
  }

  Future<List<Map<String, dynamic>>> getAllUser() async {
    return await (await initDatabase()).rawQuery('SELECT * FROM $TB_NAME');
  }

  Future<int> insertNewUser(String userName, int userContact) async {
    return await (await initDatabase()).rawInsert(
        "INSERT INTO $TB_NAME($USER_NAME,$USER_CONTACT)VALUES(\"$userName\",$userContact)");
  }

  Future<int> updateData(userName,userContact,id) async {
    Database db = await initDatabase();
    Map<String,dynamic> map = {};
    map[USER_NAME] = userName;
    map[USER_CONTACT] = userContact;
    return await db.update(TB_NAME, map,where: "$USER_ID = ?",whereArgs: [id]);
  }

  Future<int> deleteData(id) async {
    Database db = await initDatabase();
    return await db.delete(TB_NAME,where: "$USER_ID = ?",whereArgs: [id]);
  }
}
