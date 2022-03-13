// ignore_for_file: prefer_const_constructors

import 'package:cars2/screens/favorites_screen.dart';
import 'package:cars2/screens/home_screen.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatelessWidget {
  List page = [
    {'page': HomeScreen(), 'title': 'Home'},
    {'page': FavoritesScreen(), 'title': 'Favorites'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorites'),
      ]),
    );
  }
}
