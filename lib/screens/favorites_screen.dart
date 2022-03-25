import 'package:cars2/dummy_data.dart';
import 'package:cars2/models/vehicle.dart';
import 'package:cars2/widgets/vehicle_widget.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<VehicleModel> vehicles =
        DummyData.dummyVehicles.where((element) => element.isFav).toList();
    return Scaffold(
      body: ListView.builder(
          //shrinkWrap: true,
          itemCount: vehicles.length,
          itemBuilder: ((context, index) {
            return VehicleWidget(
                imageUrl: vehicles[index].ImageUrl,
                title: vehicles[index].title,
                year: vehicles[index].year,
                capacity: vehicles[index].engineCapacity,
                price: vehicles[index].price,
                id: vehicles[index].id);
          })),
    );
  }
}
