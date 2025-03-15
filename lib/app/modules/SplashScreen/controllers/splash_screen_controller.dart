import 'package:app_animation/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  var isVisible = true.obs;
  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 2),
    ()=>Get.toNamed(Routes.HOME));
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
