import 'package:flutter/material.dart';
import 'package:flutter_navigation_drawer_app/profile.dart';
import 'homepage.dart';
import 'news.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Simple Navigation drawer",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
      routes: {
        "/home": (context) => HomePage(),
        "/news": (context) => News(),
        "/profile": (context) => profile(),
      },
    );
  }
}
