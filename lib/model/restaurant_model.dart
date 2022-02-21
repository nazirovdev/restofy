import 'dart:convert';

class RestaurantModel {
  late String id;
  late String name;
  late String description;
  late String pictureId;
  late String city;
  late double rating;
  late Map<String, dynamic> menus;

  RestaurantModel({
    required this.id,
    required this.name,
    required this.description,
    required this.pictureId,
    required this.city,
    required this.rating,
    required this.menus,
  });

  RestaurantModel.fromJson(Map<String, dynamic> restaurant) {
    id = restaurant['id'];
    name = restaurant['name'];
    description = restaurant['description'];
    pictureId = restaurant['pictureId'];
    city = restaurant['city'];
    rating = restaurant['rating'] * 1.1.floorToDouble();
    menus = restaurant['menus'];
  }
}

List<RestaurantModel> parseRestaurant(String? json) {
  if (json == null) {
    return [];
  }

  final List parsed = jsonDecode(json)['restaurants'];
  return parsed
      .map((restaurant) => RestaurantModel.fromJson(restaurant))
      .toList();
}
