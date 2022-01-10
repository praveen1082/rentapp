import 'package:flutter/material.dart';
import 'package:rentapp/loginpage.dart';

void main() {
  runApp(const RentApp());
}

class RentApp extends StatelessWidget {
  const RentApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rent App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(title: 'Login Page'),
    );
  }
}
