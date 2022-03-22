// ignore_for_file: prefer_const_constructors

import 'package:cars2/dummy_data.dart';
import 'package:cars2/screens/vehicle_details_screen.dart';
import 'package:cars2/widgets/category_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final categories = DummyData.dummyCategories;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: categories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          return Categorywidget(
            title: categories[index].title,
            color: categories[index].color,
            id: categories[index].id,
          );
        },
      ),
    );
  }
}
