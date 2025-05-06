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
              isDarkMode
                  ? Stack(
                      children: List.generate(20, (index) {
                        double randomLeft = Random().nextDouble() * Get.width;
                        double randomTop =
                            Random().nextDouble() * Get.height / 1.8;
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
                    )
                  : SizedBox(),
              Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      isDarkMode ? "assets/a1.png" : "assets/b1.png",
                      fit: BoxFit.cover,
                      width: Get.width,
                      height: Get.height / 1.3,
                    ),
                  )),
              isDarkMode
                  ? Positioned(
                      bottom: 0,
                      child: Container(
                        width: Get.width,
                        height: Get.height / 10,
                        color: Colors.black,
                      ),
                    )
                  : SizedBox(),
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
              Positioned(
                top: -30,
                right: -30,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: isDarkMode
                          ? [
                              Colors.grey[300]!,
                              Colors.grey[700]!,
                              Colors.black,
                            ]
                          : [
                              Colors.yellow[200]!, 
                              Colors.orange[300]!, 
                              const Color(0x8DEF5350)!, 
                            ],
                      stops: [0.3, 0.7, 1.0],
                    ),
                    boxShadow: [
                      isDarkMode
                          ? BoxShadow(
                              color: Colors.white.withAlpha((2).toInt()),
                              blurRadius: 20,
                              spreadRadius: 5,
                            )
                          : BoxShadow(
                              color: Colors.yellow
                                  .withAlpha((2).toInt()), 
                              blurRadius: 30, 
                              spreadRadius:
                                  10, 
                            ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
