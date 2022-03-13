import 'package:flutter/material.dart';

class VehicleModel {
  String id;
  String categoryTitle;
  String title;
  String ImageUrl;
  int year;
  double price;
  double engineCapacity;
  Color color;
  bool isFullOption;
  String? description;
  VehicleModel(
      {required this.id,
      required this.categoryTitle,
      required this.title,
      required this.ImageUrl,
      required this.engineCapacity,
      required this.price,
      required this.year,
      required this.color,
      required this.isFullOption,
      this.description});
}
