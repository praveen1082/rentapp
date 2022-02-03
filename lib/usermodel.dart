import 'package:rentapp/datamodel.dart';
import 'package:rentapp/responsemodel.dart';

class UserModel {
  dynamic code;
  dynamic response;

  UserModel({this.code, this.response});

  UserModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    response = json['response'] != null
        ? new Response.fromJson(json['response'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    if (this.response != null) {
      data['response'] = this.response.toJson();
    }
    return data;
  }
}
