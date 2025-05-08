// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'app/routes/app_pages.dart';

// void main() {
//   runApp(
//     GetMaterialApp(
//       title: 'Day Night Switch',
//       debugShowCheckedModeBanner: false,
//       initialRoute: AppPages.INITIAL,
//        theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       getPages: AppPages.routes,
//     ),
//   );
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // تهيئة خدمة الدعوة من Zego مع مفتاح التنقل
  ZegoUIKitPrebuiltCallInvitationService().setNavigatorKey(navigatorKey);

  // تهيئة Zego UIKit واستخدام واجهة المكالمات النظامية
  await ZegoUIKit().initLog();
  ZegoUIKitPrebuiltCallInvitationService().useSystemCallingUI([]);

  // تشغيل التطبيق باستخدام GetX وتحديد مفتاح التنقل
  runApp(
    GetMaterialApp(
      title: 'Day Night Switch',
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: AppPages.routes,
      navigatorKey: navigatorKey,  // تحديد مفتاح التنقل هنا
    ),
  );
}
