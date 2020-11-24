import 'package:fitness/styles/styles.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  String _accName = "DefaultAcc";
  String _email = "default@example.com";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("image.jpg"),
            ),
            decoration: BoxDecoration(
              color: navColor,
            ),
            accountName: Text(
              _accName,
              style: defaultTextStyle,
            ),
            accountEmail: Text(
              _email,
              style: defaultTextStyle,
            ),
          ),
          ListTile(
            onTap: (){},
            title: Text(
              "Edit",
               style: defaultTextStyle,
            ),
            subtitle: Text(
              "Change your account details",
              style: TextStyle(
                fontFamily: "Montserrat",
              ),
            ),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            onTap: (){},
            title: Text(
              "Logout",
              style: defaultTextStyle,
            ),
            trailing: Icon(Icons.logout),
          )
        ],
      ),
    );
  }
}
