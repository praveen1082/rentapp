import 'package:flutter/material.dart';
import 'package:rentapp/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: Constants.centerappbarTitle,
          title: Text("Home Page"),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Text("This is the homepage"),
        ));
  }
}
