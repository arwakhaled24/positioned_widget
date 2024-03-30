import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YES extends StatefulWidget {
  @override
  static const String routename = "routename";

  State<YES> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<YES> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "ARWA",
            style: TextStyle(
              fontSize: 28,
            ),
          )),
          backgroundColor: Color(000),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Text(
              "Do you love ARWA ?",
              style: TextStyle(fontSize: 22),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: Text("YES")),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text("and arwa also loves you 💋")
        ]));
  }
}
