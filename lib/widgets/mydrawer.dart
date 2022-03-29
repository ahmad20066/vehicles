import 'package:cars2/screens/home_screen.dart';
import 'package:cars2/screens/settings.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Column(
          children: [
            AppBar(
              automaticallyImplyLeading: false,
              title: Text("Let`s Go"),
              toolbarHeight: 130,
              backgroundColor:
                  Theme.of(context).colorScheme.primary.withOpacity(0.7),
            ),
            ListTile(
              title: Text("Home Screen"),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              title: Text("Settings"),
              onTap: () {
                Navigator.pushNamed(context, SettingsScreen.routeName);
              },
            )
          ],
        ),
      ),
    );
  }
}
