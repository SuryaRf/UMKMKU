import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:umkmku/models/ad_banners.dart';
import 'package:umkmku/models/category.dart';
import 'package:umkmku/models/product.dart';
import 'package:umkmku/service/remote_service/remote_service_banner.dart';

import '../service/remote_service/remote_popular_category_service.dart';
import '../service/remote_service/remote_popular_product.dart';

class HomeController extends GetxController {
  static HomeController instance = Get.find();
  RxList<AdBanner> bannerList = List<AdBanner>.empty(growable: true).obs;
  RxList<Categoryy> popularCategoryList = List<Categoryy>.empty(growable: true).obs;
    RxList<Product> popularProductList = List<Product>.empty(growable: true).obs;
  RxBool isBannerLoading = false.obs;
  RxBool isPopularCategoryLoading = false.obs;
   RxBool isPopularProductLoading = false.obs;

  @override
  void onInit() {
    getAdBanners();
    getPopularCategories();
    getPopularProduct();
    super.onInit();
  }

  void getAdBanners() async{
    try{
      isBannerLoading(true);
      var result = await RemoteBannerService().get();
      if (result != null) {
        bannerList.assignAll(adBannerListFromJson(result.body));
      }
    } finally {
      isBannerLoading(false);
    }
  }

  void getPopularCategories() async{
    try{
      isPopularCategoryLoading(true);
      var result = await RemotePopularCategoryService().get();
      if (result != null) {
        popularCategoryList.assignAll(popularCategoryListFromJson(result.body));
      }
    } finally {

      isPopularCategoryLoading(false);
    }
  }

    void getPopularProduct() async{
    try{
      isPopularProductLoading(true);
      var result = await RemotePopularProductService().get();
      if (result != null) {
        popularProductList.assignAll(popularProductListFromJson(result.body));
      }
    } finally {

     isPopularProductLoading(false);
    }
  }
}