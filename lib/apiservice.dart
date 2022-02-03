import 'package:dio/dio.dart';

class ApiService {
  final String baseUrl = "http://localhost:8081";
  var dio = Dio();
  ApiService() {
    dio.options
      ..baseUrl = baseUrl
      ..headers = {
        'content-type': 'application/json',
      };
  }
}
