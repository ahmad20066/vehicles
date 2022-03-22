// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cars2/screens/favorites_screen.dart';
import 'package:cars2/screens/home_screen.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int selectedIndex = 0;

  final List<Map<String, dynamic>> pages = [
    {'page': HomeScreen(), 'title': 'Vehicles'},
    {
      'page': FavoritesScreen(),
      'title': 'Favorites',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pages[selectedIndex]['title']),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          unselectedIconTheme: IconThemeData(size: 20),
          selectedIconTheme: IconThemeData(size: 30),
          unselectedFontSize: 10,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Vehicles"),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favorites"),
          ]),
      body: pages[selectedIndex]['page'],
    );
  }
}
