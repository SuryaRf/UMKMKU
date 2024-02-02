import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:umkmku/component/main_header.dart';
import 'package:umkmku/controller/controllers.dart';
import 'package:umkmku/view/home/component/carousel_slider/carousel_slider_view.dart';
import 'package:umkmku/view/home/component/popular_category/popular_category_loading.dart';

import 'component/carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Column(
      children: [
       const  MainHeader(),
        Obx(() {
          if (homeController.bannerList.isNotEmpty) {
            return CarouselSliderView(bannerList: homeController.bannerList,);
          }else{
            return carouselLoading();
          }
        }),
         Obx(() {
          if (homeController.popularCategoryList.isNotEmpty) {
            return const PopularCategoryLoading();
          }else{
            return const PopularCategoryLoading();
          }
        })
      ],
    ));
  }
}
