import 'dart:convert';

List<Categoryy> popularCategoryListFromJson(String val) {
  List<dynamic>? jsonData = json.decode(val)['data'];

  if (jsonData == null) {
    // Handle the case where 'data' is null
    return [];
  }

  return List<Categoryy>.from(jsonData.map((category) =>
      Categoryy.popularCategoryFromJson(category as Map<String, dynamic>)));
}

class Categoryy {
  final int id;
  final String name;
  final String image;

  Categoryy({required this.id, required this.name, required this.image});

  factory Categoryy.popularCategoryFromJson(Map<String, dynamic> data) =>
      Categoryy(
        id: data['id'],
        name: data['attributes']['category']['data']['attributes']['name'],
        image: data['attributes']['category']['data']['attributes']['image']
            ['data']['attributes']['url'],
      );
}
