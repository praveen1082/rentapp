import 'package:flutter/material.dart';

class Owner extends StatelessWidget {
  const Owner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        Container(
          width: double.infinity,
          height: 100,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              Text("Hello World"),
              Text("Hello World"),
              Text("Hello World"),
              Text("Hello World"),
              Text("Hello World"),
              Text("Hello World"),
              Text("Hello World"),
              Text("Hello World"),
              Text("Hello World"),
              Text("Hello World"),
              Text("Hello World"),
              Text("Hello World"),
              Text("Hello World"),
              Text("Hello World"),
              Text("Hello World"),
              Text("Hello World"),
              Text("Hello World"),
              Text("Hello World"),
              Text("Hello World"),
              Text("Hello World"),
            ],
          ),
        ),
      ],
    );
  }
}
