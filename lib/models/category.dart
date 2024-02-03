import 'dart:convert';

List<Categoryy> popularCategoryListFromJson(String val) => List<Categoryy>.from(
      json.decode(val)['data'].map(
            (category) => Categoryy.popularCategoryFromJson(category),
          ),
    );

class Categoryy {
  final int id;
  final String name;
  final String image;

  Categoryy({required this.id, required this.name, required this.image});

  factory Categoryy.popularCategoryFromJson(
          Map<String, dynamic> data) =>
      Categoryy(
          id: data['id'],
          name: data['attributes']['category']['data']['attributes']['name'],
          image: data['attributes']['category']['data']['attributes']['image']
                     ['data']['attributes']['url']);
}
