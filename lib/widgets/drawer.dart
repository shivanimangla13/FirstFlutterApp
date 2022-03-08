import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 3.0,
      child: Container(
        color: Colors.white,
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                accountName: Text("Shivani"),
                accountEmail: Text("test@gmail.com"),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/user.png")),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.deepPurple,
              ),
              title: Text("Home"),
              textColor: Colors.deepPurple,
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.deepPurple,
              ),
              title: Text("Profile"),
              textColor: Colors.deepPurple,
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.ant,
                color: Colors.deepPurple,
              ),
              title: Text("Logout"),
              textColor: Colors.deepPurple,
            )
          ],
        ),
      ),
    );
  }
}
