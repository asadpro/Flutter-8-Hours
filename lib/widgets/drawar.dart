import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawar extends StatelessWidget {
  const MyDrawar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: DrawerHeader(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text('AsadPro3.1'),
              accountEmail: Text('asadjani202@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/asad.jpg'),
              ),
            ),
            Divider(
              height: 12.0,
              color: Colors.grey,
              thickness: 1.2,
            ),
            ListTileItem(
              icon: CupertinoIcons.home,
              text: 'Home',
            ),
            ListTileItem(
              icon: CupertinoIcons.profile_circled,
              text: 'Profile',
            ),
            ListTileItem(
              icon: CupertinoIcons.mail,
              text: 'Email',
            ),
            ListTileItem(
              icon: CupertinoIcons.info_circle,
              text: 'About',
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.multiply_circle,
                color: Colors.white,
              ),
              title: Text(
                'Exit',
                textScaleFactor: 1.5,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ListTileItem extends StatelessWidget {
  final String text;
  final IconData icon;

  const ListTileItem({Key? key, required this.text, required this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        text,
        textScaleFactor: 1.5,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
