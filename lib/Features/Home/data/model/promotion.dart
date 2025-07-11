import 'package:aviz/Constants/string_constants.dart';

class Promotion {
  String id;
  String title;
  String description;
  String thumbnailUrl;
  int price;
  int rooms;
  int floor;
  int width;
  int year_build;
  int price_of_metre;
  String house_type;

  Promotion(
      {required this.id,
      required this.title,
      required this.description,
      required this.thumbnailUrl,
      required this.price,
      required this.rooms,
      required this.floor,
      required this.width,
      required this.year_build,
      required this.price_of_metre,
      required this.house_type});

  factory Promotion.fromJson(Map<String, dynamic> jsonObject) {
    return Promotion(
        id: jsonObject['id'],
        title: jsonObject['name'],
        description: jsonObject['description'],
        thumbnailUrl:
            '${StringConstants.baseUrl}files/${jsonObject['collectionId']}/${jsonObject['id']}/${jsonObject['thumbnail']}',
        price: jsonObject['price'],
        rooms: jsonObject['rooms'],
        floor: jsonObject['floor'],
        width: jsonObject['width'],
        year_build: jsonObject['year_build'],
        price_of_metre: jsonObject['price_of_metre'],
        house_type: jsonObject['house_type']);
  }
}
