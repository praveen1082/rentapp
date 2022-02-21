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
          height: 120,
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
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        color: Colors.green[200],
                        // height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Total flats:",
                                ),
                                Text("5"),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Total rent:"),
                                Text("5000"),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(child: Text("Total rent received:")),
                                Expanded(child: Text("5000000000000000000")),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                          ],
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
                  child: Column(
                    children: [
                      Text("Total flats:"),
                      Text("Total rent:"),
                      Text("Total rent received:"),
                    ],
                  ),
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
