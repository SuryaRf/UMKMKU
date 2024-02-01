import 'package:get/get.dart';
import 'package:umkmku/controller/dashboard_controller.dart';
import 'package:umkmku/controller/home_controller.dart';

class DasboardBindig extends Bindings {
  @override
  void dependencies() {
    Get.put(DashboardController());
    Get.put(HomeController());
  }
  
}