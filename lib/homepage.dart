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
      )),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.pink),
              accountName: Text("sunilkumargupta"),
              accountEmail: Text("sunilkumar@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  child: Text(
                    "Am",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink),
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
                leading: Icon(Icons.home, color: Colors.pink),
                title: Text("HOmePage"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
