import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_personal/src/helpers/colors/custom_colors.dart';

class AppbarWidgetAction extends StatelessWidget {
  const AppbarWidgetAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            "Home",
            style: GoogleFonts.oxanium(
                color: CustomColors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "About",
            style: GoogleFonts.oxanium(
                color: CustomColors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Project",
            style: GoogleFonts.oxanium(
                color: CustomColors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
