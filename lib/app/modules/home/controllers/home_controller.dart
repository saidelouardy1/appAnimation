import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomeController extends GetxController {
  var isDarkMode = false.obs;
  late AnimationController animationController;
  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    Get.changeThemeMode(isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
  }
}
