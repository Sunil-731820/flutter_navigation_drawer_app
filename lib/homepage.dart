import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Drawer Nagivation App",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black45,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.redAccent),
              accountName: Text(
                "sunilkumargupta",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                "sunilkumar@gmail.com",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  child: Center(
                    child: Text(
                      "sunil image",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black45),
                    ),
                  ),
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                onTap: () {
                  Navigator.popAndPushNamed(context, "/home");
                },
                leading: Icon(Icons.home, color: Colors.black45),
                title: Text(
                  "HomePage",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                onTap: () {
                  Navigator.popAndPushNamed(context, "/profile");
                },
                leading: Icon(Icons.person, color: Colors.black),
                title: Text(
                  "My profile",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                onTap: () {
                  Navigator.popAndPushNamed(context, "/news");
                },
                leading: Icon(
                  Icons.shopping_basket_sharp,
                  color: Colors.black45,
                ),
                title: Text(
                  "News",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
