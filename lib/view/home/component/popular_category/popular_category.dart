import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:umkmku/constant.dart';
import 'package:umkmku/models/category.dart';

import 'popular_category_cardd.dart';

class PopularCategory extends StatelessWidget {
  final List<Categoryy> categories;
  const PopularCategory({Key? key,
    required this.categories
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: const EdgeInsets.only(right: 10),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: categories.length,
          itemBuilder: (context, index) => PopularCategoryCard(
              category: categories[index]
          )
      ),
    );
  }
}