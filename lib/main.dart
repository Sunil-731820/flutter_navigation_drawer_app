import 'package:flutter/material.dart';
import 'package:flutter_navigation_drawer_app/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Simple Navigation drawer",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
      routes: {
        "/home": (context) => HomePage(),
      },
    );
  }
}
