class LoginModel {
  var username;
  var password;
  var isOwner;

  LoginModel({this.username, this.password, this.isOwner});

  LoginModel.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
    isOwner = json['isOwner'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['password'] = this.password;
    data['isOwner'] = this.isOwner;
    return data;
  }
}
