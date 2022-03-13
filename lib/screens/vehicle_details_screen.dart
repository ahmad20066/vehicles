// ignore_for_file: prefer_const_constructors

import 'package:cars2/dummy_data.dart';
import 'package:cars2/models/vehicle.dart';
import 'package:cars2/widgets/vehicle_widget.dart';
import 'package:flutter/material.dart';

class VehicleDetailsScreen extends StatelessWidget {
  static const routeName = '/Details';

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments as String;
    final category = DummyData.dummyCategories.firstWhere((category) {
      return category.id == id;
    });
    List<VehicleModel> vehicles = DummyData.dummyVehicles
        .where((element) => element.categoryTitle == category.title)
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: vehicles.isNotEmpty
          ? ListView.builder(
              itemCount: vehicles.length,
              itemBuilder: (context, index) {
                return VehicleWidget(
                  imageUrl: vehicles[index].ImageUrl,
                  title: vehicles[index].title,
                  year: vehicles[index].year,
                  price: vehicles[index].price,
                  capacity: vehicles[index].engineCapacity,
                  id: vehicles[index].id,
                );
              })
          : Center(
              child: Text("No Vehicles Available"),
            ),
    );
  }
}
