import 'package:aviz/Constants/string_constants.dart';

class Profile{
  String text;
  String icon;

  Profile({
    required this.text,
    required this.icon,
  });

  factory Profile.fromJson(Map<String, dynamic> jsonObject) {
    return Profile(
      text: jsonObject['part'],
      icon:'${StringConstants.baseUrl}files/${jsonObject['collectionId']}/${jsonObject['id']}/${jsonObject['icon']}',
    );
  }
}