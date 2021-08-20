import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String text1 = """Welcome to the navigation drawer pages\t
    so , if you have drawer and want to navigate from one page\t
    to another pages then this is the right choice to do.""";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Drawer Nagivation",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black45,
      ),
      body: Text(
        text1,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.redAccent),
              accountName: Text(
                "Name :sunilkumargupta",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                "Email:sunilkumar@gmail.com",
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
