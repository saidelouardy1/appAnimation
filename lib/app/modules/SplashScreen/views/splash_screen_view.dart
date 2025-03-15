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
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Stack(
          children: [
             Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.blueGrey.withOpacity(0.8),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: _buildStars(), // Call to build stars
            ),
          ),
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
                    duration: Duration(seconds: 2), 
                    curve: Curves.easeIn,
                  ).then().scale(
                    duration: Duration(seconds:2 ),
                    curve: Curves.bounceOut,
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
                    duration: Duration(seconds: 3),
                    curve: Curves.easeInOut,
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
                    duration: Duration(seconds: 3),
                    curve: Curves.easeInOut,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
 Widget _buildStars() {
    return Obx(
      () => Stack(
        children: List.generate(controller.starsPositions.length, (index) {
          final position = controller.starsPositions[index];
          return Positioned(
            left: position.dx,
            top: position.dy,
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
      ),
    );
  }

}
