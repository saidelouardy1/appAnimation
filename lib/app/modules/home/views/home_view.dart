import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:day_night_switch/day_night_switch.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        final isDarkMode = Get.find<HomeController>().isDarkMode.value;

        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          color: isDarkMode ? const Color(0xFF1e2230) : const Color(0xFFd56352),
          child: Stack(
            children: <Widget>[
            isDarkMode?   Stack(
                children: List.generate(20, (index) {
                  double randomLeft = Random().nextDouble() * Get.width;
                  double randomTop = Random().nextDouble() * Get.height / 1.8;
                  return Positioned(
                    left: randomLeft,
                    top: randomTop,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      width: 5,
                      height: 5,
                    ),
                  );
                }),
              ):SizedBox(),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Image.asset(
                  "assets/a1.png",
                  fit: BoxFit.cover,
                  width: Get.width,
                  height: Get.height/2,
                  )
              ),
              Center(
                  child: DayNightSwitch(
                value: isDarkMode,
                moonImage: AssetImage('assets/moon.png'),
                sunImage: AssetImage('assets/sun.png'),
                sunColor: Colors.yellow,
                moonColor: Colors.blue,
                dayColor: Color(0xFF87CEEB),
                nightColor: Color(0xFF003366),
                onChanged: (value) {
                  Get.find<HomeController>().toggleTheme();
                },
              )),
            ],
          ),
        );
      }),
    );
  }
}
