import 'package:flutter/material.dart';
import 'package:rentapp/constants.dart';

class HomePage extends StatefulWidget {
  final isOwner;
  const HomePage({Key? key, required this.isOwner}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var isOwner = widget.isOwner;
    return Scaffold(
      appBar: AppBar(
        centerTitle: Constants.centerappbarTitle,
        title: Text("Home Page"),
        // automaticallyImplyLeading: false,
      ),
      drawer: Drawer(
        child: Text("I am a drawer"),
      ),
      body: Center(
        child: isOwner
            ? Text("This is a homepage for owner")
            : Text("This is a homepage for renter"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.white,
      ),
    );
  }
}
