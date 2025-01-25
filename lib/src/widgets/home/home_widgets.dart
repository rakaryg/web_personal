import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gif_view/gif_view.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWidgets extends StatelessWidget {
  const HomeWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(children: [
        Column(
          children: [
            Container(
              decoration: const BoxDecoration(color: Colors.black),
              height: 500,
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    DefaultTextStyle(
                      style: GoogleFonts.oxanium(
                          fontSize: 64,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                      child: AnimatedTextKit(
                        animatedTexts: [WavyAnimatedText("Under Construction")],
                        isRepeatingAnimation: true,
                      ),
                    ),
                    GifView.asset(
                      colorBlendMode: BlendMode.clear,
                      "assets/gif/bongo_cat.gif",
                      width: 300,
                      height: 250,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        GifView.asset(
          'assets/gif/nyan_cat.gif',
        ),
      ]),
    );
  }
}
