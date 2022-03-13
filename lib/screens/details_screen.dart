// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cars2/dummy_data.dart';
import 'package:cars2/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  static const routeName = '/details';

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments as String;
    final vehicle = DummyData.dummyVehicles.firstWhere((vehicle) {
      return vehicle.id == id;
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(vehicle.title),
      ),
      body: ListView(
        children: [
          Image.network(vehicle.ImageUrl),
          SizedBox(
            height: 20,
          ),
          CustomText(
            text: "Model : ${vehicle.categoryTitle} ${vehicle.title}",
          ),
          CustomText(
            text: "Year : ${vehicle.year}",
          ),
          CustomText(text: "Price : ${vehicle.price}\$"),
          CustomText(text: "Engine Capacity : ${vehicle.engineCapacity}cc"),
          Row(
            //Full option check
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Full Option : ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Icon(
                vehicle.isFullOption ? Icons.check : Icons.dangerous,
                size: 30,
                color: vehicle.isFullOption ? Colors.green : Colors.red,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            //Color box
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Color : ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 30,
                width: 30,
                color: vehicle.color,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          if (vehicle.description != null)
            Column(
              children: [
                Text(
                  "Description :",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
                ),
                Container(
                  height: 150,
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Text(
                      vehicle.description!,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
        ],
      ),
    );
  }
}
