// ignore_for_file: prefer_const_constructors

import 'package:cars2/screens/details_screen.dart';
import 'package:flutter/material.dart';

class VehicleWidget extends StatelessWidget {
  String imageUrl;
  String title;
  int year;
  double capacity;
  double price;
  String id;
  VehicleWidget(
      {required this.imageUrl,
      required this.title,
      required this.year,
      required this.capacity,
      required this.price,
      required this.id});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, DetailsScreen.routeName, arguments: id);
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Column(
          children: [
            Stack(
              //Image and title
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    child: Image.network(imageUrl)),
                Positioned(
                  top: 70,
                  child: Container(
                    width: 150,
                    color: Colors.black38,
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Container(
              color: Colors.white,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Year : $year"),
                  Text("Capacity : ${capacity}cc"),
                  Text("Price : $price\$")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
