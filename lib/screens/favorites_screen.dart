import 'package:cars2/dummy_data.dart';
import 'package:cars2/models/vehicle.dart';
import 'package:cars2/widgets/vehicle_widget.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<VehicleModel> favVehicles =
        DummyData.dummyVehicles.where((element) => element.isFav).toList();
    return Scaffold(
      body: ListView.builder(
          itemCount: favVehicles.length,
          itemBuilder: (context, index) {
            return VehicleWidget(
                imageUrl: favVehicles[index].ImageUrl,
                title: favVehicles[index].title,
                year: favVehicles[index].year,
                capacity: favVehicles[index].engineCapacity,
                price: favVehicles[index].price,
                id: favVehicles[index].id);
          }),
    );
  }
}
