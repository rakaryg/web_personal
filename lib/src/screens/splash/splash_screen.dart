import 'package:animate_gradient/animate_gradient.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_personal/src/helpers/colors/custom_colors.dart';
import 'package:web_personal/src/screens/home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DefaultTextStyle(
              style: GoogleFonts.oxanium(
                  color: CustomColors.black,
                  fontSize: 48,
                  fontWeight: FontWeight.w600),
              child: AnimatedTextKit(
                onFinished: () {
                  Get.off(const HomeScreen());
                },
                animatedTexts: [
                  TyperAnimatedText(
                    "Loading...",
                    speed: const Duration(milliseconds: 50),
                  )
                ],
                totalRepeatCount: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
