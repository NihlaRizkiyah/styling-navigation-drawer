import 'package:acara_16/LoginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget> [
          UserAccountsDrawerHeader(
            accountName: Text("Nihla Rizkiyah"), 
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("images/nihla.jpeg")
            ),
            accountEmail: Text("nihlarizk14@gmail.com"),
          ),
          DrawerListTile(
            iconData : Icons.group,
            title: "NewGroup",
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData : Icons.lock,
            title: "New Secret Group",
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData : Icons.notifications,
            title: "New Channel Group",
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData : Icons.contacts,
            title: "contacs",
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData : Icons.bookmark_border,
            title: "Saved Message",
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData : Icons.phone,
            title: "Calls",
            onTilePressed: (){},
          ),
          DrawerListTile(
          iconData: Icons.settings,
          title: "Setting",
          onTilePressed: () {},
        ),
         DrawerListTile(
          iconData: Icons.logout,
          title: "Logout",
          onTilePressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
          },
         ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DrawerListTile({Key? key, required this.iconData, required this.title, required this.onTilePressed}) 
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(title, style: TextStyle(fontSize: 16),),
    );
  }
}