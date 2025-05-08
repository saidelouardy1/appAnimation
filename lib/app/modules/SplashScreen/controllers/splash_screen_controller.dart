import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:app_animation/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  RxList<Offset> starsPositions = RxList<Offset>([]);

  @override
  void onInit() {
    super.onInit();
    
    // Initialize the stars with random positions
    _generateRandomPositions();

    // Periodically update the positions of all stars
    Timer.periodic(Duration(milliseconds: 800), (timer) {
      _generateRandomPositions(); 
    });
    Future.delayed(
      Duration(seconds: 4),
      (){
         Get.offNamed(Routes.HOME);
      }
    );
  }

  // Method to generate random positions for all stars
  void _generateRandomPositions() {
    starsPositions.value = List.generate(50, (_) {
      double randomLeft = Random().nextDouble() * Get.width;
      double randomTop = Random().nextDouble() * Get.height / 1.3;
      return Offset(randomLeft, randomTop);
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
