import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_personal/src/helpers/colors/custom_colors.dart';

class AppbarWidgetTitle extends StatelessWidget {
  const AppbarWidgetTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return DefaultTextStyle(
            style: GoogleFonts.oxanium(
                color: CustomColors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold),
            child: AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                  "Raka Ryandra Guntara",
                  speed: const Duration(milliseconds: 150),
                )
              ],
              totalRepeatCount: 3,
            ),
          );
        } else {
          return DefaultTextStyle(
            style: GoogleFonts.oxanium(
                color: CustomColors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold),
            child: AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                  "Raka Ryandra Guntara",
                  speed: const Duration(milliseconds: 150),
                )
              ],
              totalRepeatCount: 3,
            ),
          );
        }
      },
    );
  }
}
