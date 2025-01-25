import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_personal/src/helpers/colors/custom_colors.dart';

class AppbarWidgetActionMobile extends StatelessWidget {
  const AppbarWidgetActionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Icon(
                Icons.list,
                color: Colors.white,
                size: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
