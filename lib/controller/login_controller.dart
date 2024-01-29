import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  var rememberUser = false.obs;

  void rUser() {
     rememberUser.value = !rememberUser.value;
  }

}