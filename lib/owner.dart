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
          // color: Colors.white,
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.all(5),
          //width: 200,
          child: ListView(
            // shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(3)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "House No. 1",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Expanded(
                      child: Card(
                        color: Colors.red,
                        child: Container(
                          width: double.infinity,
                          child: Text("Hello world"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Card(
                  color: Colors.blue,
                  child: Text("Hello "),
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Card(
                  color: Colors.blue,
                  child: Text("Hello "),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
