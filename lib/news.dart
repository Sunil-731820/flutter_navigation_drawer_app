import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String newsdetail = """
    this is the news part to see when we click on the new 
    which is present in the drawer """;
    return Scaffold(
      appBar: AppBar(
        title: Text("new parts"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        width: 300,
        height: 300,
        child: Text(
          newsdetail,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
