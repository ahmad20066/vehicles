import 'package:cars2/screens/details_screen.dart';
import 'package:cars2/screens/home_screen.dart';
import 'package:cars2/screens/vehicle_details_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Merriweather',
          primarySwatch: Colors.pink,
          scaffoldBackgroundColor: Colors.orange[100]),
      home: HomeScreen(),
      routes: {
        VehicleDetailsScreen.routeName: (context) => VehicleDetailsScreen(),
        DetailsScreen.routeName: (context) => DetailsScreen()
      },
    );
  }
}
