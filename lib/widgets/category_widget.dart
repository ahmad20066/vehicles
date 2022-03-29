// ignore_for_file: prefer_const_constructors

import 'package:cars2/screens/vehicle_details_screen.dart';
import 'package:flutter/material.dart';

class Categorywidget extends StatelessWidget {
  String title;
  Color color;
  String id;

  Categorywidget({required this.title, required this.color, required this.id});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      splashColor: color,
      onTap: () {
        Navigator.pushNamed(context, VehicleDetailsScreen.routeName,
            arguments: id);
      },
      child: Container(
        margin: EdgeInsets.all(8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: color.withOpacity(0.6),
                blurRadius: 4,
              )
            ],
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [color.withOpacity(0.7), color])),
        child: Text(
          title,
          style: TextStyle(fontSize: 20, fontFamily: 'Merriweather'),
        ),
      ),
    );
  }
}
