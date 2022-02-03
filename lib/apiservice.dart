import 'package:dio/dio.dart';
import 'package:rentapp/usermodel.dart';

class DataResponse<T> {
  var success;
  var message;
  var data;
}

class ApiService {
  final String baseUrl = "http://localhost:8080";
  var dio = Dio();
  ApiService() {
    dio.options
      ..baseUrl = baseUrl
      ..headers = {
        'content-type': 'application/json',
        "Access-Control_Allow_Origin": "*"
      };
  }
  //Fututre<UserModel>
  Future<DataResponse<dynamic>> register(
    String phone,
    String firstName,
    String lastName,
    String email,
    String password,
    String confirmPassword,
  ) async {
    DataResponse r = new DataResponse();
    UserModel u = new UserModel();
    dio.options.headers["content-type"] = "application/json";

    u.phone = phone;
    u.firstName = firstName;
    u.lastName = lastName;
    u.email = email;
    u.password = password;

    try {
      print(password);
      print(confirmPassword);
      if (password == confirmPassword) {
        var response = await dio.post('/api/user', data: u.toJson());
        print(response.statusCode);
        print(response.data);

        if (response == null) {
          r.success = false;
          r.message = "Unable to register";
          r.data = null;
          print(r.message);
        } else {
          var responsebody = response.data;
          r = getResponse(response.statusCode, responsebody);
          if (r.success) {
            var userModel = UserModel.fromJson(responsebody);
            r.data = userModel;
          }
          print(r.message);
        }
      } else {
        r.success = false;
        r.message = "passwords do not match";
      }
    } on DioError catch (e) {
      print(e);
      print(e.error);
      print(e.response?.statusCode);
      print(e.response?.data);
      if (e.response?.data != null) {
        Map<String, dynamic> map = e.response?.data;
        if (map.containsKey("message")) {
          r.message = map["message"];
        } else
          r.message = "Unable to register";
      } else {
        r.message = "Unable to register";
      }
      r.success = false;
      r.data = null;
    }
    return r;
  }
}

DataResponse<dynamic> getResponse(var status, Map<String, dynamic> response) {
  DataResponse res = DataResponse();

  switch (status) {
    case 200:
    case 201:
      res.success = true;
      break;
    case 400:
    case 422:
      res.message = "Invalid request";
      break;
    case 401:
    case 403:
      res.message = "Unauthorized";
      break;
    default:
      res.success = false;
  }
  if (response.containsKey("message")) {
    res.message = response["message"];
  }
  return res;
}
