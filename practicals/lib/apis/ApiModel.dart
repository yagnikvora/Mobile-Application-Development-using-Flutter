class ApiModel{

  late String _userId,_userName,_userMobile,_userImage;

  String get userId => _userId;

  set userId(String value) {
    _userId = value;
  }

  get userName => _userName;

  get userImage => _userImage;

  set userImage(value) {
    _userImage = value;
  }

  get userMobile => _userMobile;

  set userMobile(value) {
    _userMobile = value;
  }

  set userName(value) {
    _userName = value;
  }
}