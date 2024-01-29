import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:umkmku/controller/login_controller.dart';


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
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home:  SignInPage(),
    );
  }
}