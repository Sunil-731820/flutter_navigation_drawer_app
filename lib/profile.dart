import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String text1 = "Name : Sunil Kumar Gupta\n";
    String text2 = " class : 12";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "profile parts",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        width: 300,
        height: 300,
        child: Text(
          text1 + text2,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
