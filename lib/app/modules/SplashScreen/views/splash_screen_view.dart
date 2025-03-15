import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart'; // Import the package

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1e2230),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Animated CircleAvatar
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/download.jpg'),
                    radius: 90,
                  ).animate().fadeIn(
                    duration: Duration(seconds: 1), 
                    curve: Curves.bounceOut,
                  ).then().scale(
                    duration: Duration(seconds:1 ),
                    curve: Curves.easeIn,
                  ),
                  // Animated Text for 'Open Mobile Code'
                  Text(
                    'Open Mobile Code',
                    style: GoogleFonts.mPlus1(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ).animate().fadeIn(
                    duration: Duration(seconds: 1),
                    curve: Curves.easeIn,
                  ),
                  // Animated Text for 'dev.dream'
                  Text(
                    'dev.dream',
                    style: GoogleFonts.mPlus1(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                    ),
                  ).animate().fadeIn(
                    duration: Duration(seconds: 1),
                    curve: Curves.easeIn,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
