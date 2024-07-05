import "dart:convert";

import "package:http/http.dart" as http;

class ApiExecutor {
  String API_URL = "https://65c33697f7e6ea59682c25c9.mockapi.io/flutterdemo";

  static const String UserName = "UserName";
  static const String UserImage = "UserImage";
  static const String UserContact = "UserMobile";
  static const String UserId = "UserId";

  Future<List<dynamic>> getAllUsingApi() async {
    http.Response res = await http.get(Uri.parse(API_URL));
    List<dynamic> userList = jsonDecode(res.body);
    return userList;
  }

  Future<Map<dynamic, dynamic>> deleteData(String id) async {
    http.Response res = await http.delete(Uri.parse(API_URL + '/' + id));
    Map<dynamic, dynamic> userList = jsonDecode(res.body);
    return userList;
  }

  Future<Map<dynamic,dynamic>> insertData(Map<String,dynamic> map) async {
    http.Response res = await http.post(Uri.parse(API_URL),body: map);
    Map<dynamic,dynamic> userList = jsonDecode(res.body);
    return userList;
  }

  Future<Map<dynamic,dynamic>> updateData(Map<dynamic,dynamic> map) async {
    http.Response res = await http.put(Uri.parse(API_URL + '/' + map[UserId]),body: map);
    Map<dynamic,dynamic> userList = jsonDecode(res.body);
    return userList;
  }
}
