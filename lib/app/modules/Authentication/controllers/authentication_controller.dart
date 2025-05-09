import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationController extends GetxController {
  GlobalKey<FormState> globalKey = GlobalKey();
  TextEditingController UserName = TextEditingController();
  TextEditingController UserId = TextEditingController();

   late SharedPreferences prefs;
  
  @override
  void onInit() {
    super.onInit();
    prefs = Get.find<SharedPreferences>();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  SaveNameAndId(String Name , String Id){
    prefs.setString("name", Name);
    prefs.setString("Id", Id);
  }

}
