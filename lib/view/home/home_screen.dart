import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:umkmku/component/main_header.dart';
import 'package:umkmku/controller/controllers.dart';

import 'component/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Column(
      children: [
       const  MainHeader(),
        Obx(() {
          if (homeController.isBannerLoading.value) {
            return carouselLoading();
          }else{
            return carouselLoading();
          }
        })
      ],
    ));
  }
}
