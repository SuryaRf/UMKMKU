import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:umkmku/component/main_header.dart';
import 'package:umkmku/controller/controllers.dart';
import 'package:umkmku/view/home/component/carousel_slider/carousel_slider_view.dart';
import 'package:umkmku/view/home/component/popular_category/popular_category_cardd.dart';
import 'package:umkmku/view/home/component/popular_category/popular_category.dart';
import 'package:umkmku/view/home/component/popular_category/popular_category_loading.dart';
import 'package:umkmku/view/home/component/popular_product/popular_product_loading.dart';
import 'package:umkmku/view/home/component/section_title.dart';

import 'component/carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        const MainHeader(),
        Expanded(
            child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Obx(() {
                if (homeController.bannerList.isNotEmpty) {
                  return CarouselSliderView(
                    bannerList: homeController.bannerList,
                  );
                } else {
                  return const carouselLoading();
                }
              }),
              const SectionTitle(title: 'Popular Category'),
              Obx(() {
                if (homeController.popularCategoryList.isNotEmpty) {
                  return PopularCategory(
                      categories: homeController.popularCategoryList);
                } else {
                  return const PopularCategoryLoading();
                }
              }),
              const SectionTitle(title: 'Popular Product'),
               Obx(() {
                if (homeController.popularProductList.isNotEmpty) {
                  return const PopularProductLoading();
                } else {
                  return const PopularProductLoading();
                }
              }),
            ],
          ),
        )),
      ],
    ));
  }
}
