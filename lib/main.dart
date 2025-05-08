import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';


void main() {

  runApp(
    GetMaterialApp(
      title: 'Day Night Switch',
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
       theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: AppPages.routes,
    ),
  );
}
