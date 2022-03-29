import 'package:cars2/dummy_data.dart';
import 'package:cars2/models/vehicle.dart';
import 'package:cars2/screens/details_screen.dart';
import 'package:cars2/screens/home_screen.dart';
import 'package:cars2/screens/settings.dart';
import 'package:cars2/screens/tab_screen.dart';
import 'package:cars2/screens/vehicle_details_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  Map<String, bool> _currentFilters = {
    'fullOption': false,
    'capacity': false,
  };
  List<VehicleModel> _displayedVehicles = DummyData.dummyVehicles;
  void setFilters(Map<String, bool> filters) {
    _currentFilters = filters;
    _displayedVehicles = DummyData.dummyVehicles.where((vehicle) {
      if (filters['fullOption']! && !vehicle.isFullOption) {
        return false;
      }
      if (filters['capacity']! && vehicle.engineCapacity < 3000) {
        return false;
      }
      return true;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Merriweather',
          primarySwatch: Colors.pink,
          scaffoldBackgroundColor: Colors.orange[100]),
      home: TabScreen(),
      routes: {
        VehicleDetailsScreen.routeName: (context) =>
            VehicleDetailsScreen(_displayedVehicles),
        DetailsScreen.routeName: (context) => DetailsScreen(),
        SettingsScreen.routeName: (context) =>
            SettingsScreen(setFilters, _currentFilters),
      },
    );
  }
}
