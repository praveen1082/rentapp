import 'package:flutter/material.dart';

class Owner extends StatelessWidget {
  const Owner({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: ListView(
        children:[
          
          Text("Hello world")
        ]
      )
    );
  }
}