import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:umkmku/controller/login_controller.dart';
import 'package:umkmku/route/app_page.dart';
import 'package:umkmku/route/app_route.dart';
import 'package:umkmku/theme/app_theme.dart';


import 'auth/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final loginC = Get.put(LoginController());
    return GetMaterialApp(
      getPages: AppPage.list,
      initialRoute: AppRoute.signIn,
      color: const Color(0xff00A9FF),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      
    );
  }
}