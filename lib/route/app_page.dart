import 'package:get/get.dart';
import 'package:umkmku/route/app_route.dart';
import 'package:umkmku/view/dashoard/dashboard.dart';
import 'package:umkmku/view/dashoard/dashboard_binding.dart';

class AppPage {
  static var list = [
    GetPage(
      name: AppRoute.dashboard,
      page: (() => const DashboardPage()),
      binding: DasboardBindig(),
    ),
    // GetPage(name: name, page: page)
  ];
}
