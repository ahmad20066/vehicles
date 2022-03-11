class VehicleModel {
  String id;
  String categoryTitle;
  String title;
  String ImageUrl;
  int year;
  double price;
  double engineCapacity;
  String? description;
  VehicleModel(
      {required this.id,
      required this.categoryTitle,
      required this.title,
      required this.ImageUrl,
      required this.engineCapacity,
      required this.price,
      required this.year,
      this.description});
}
