import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gif_view/gif_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seo/html/seo_widget.dart';
import 'package:web_personal/src/helpers/colors/custom_colors.dart';
import 'package:web_personal/src/widgets/appbar/appbar_widget.dart';

class HomeWidgets extends StatelessWidget {
  const HomeWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverAppBar(
        pinned: true,
        floating: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: FlexibleSpaceBar(
          titlePadding: EdgeInsets.zero,
          background: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.white.withOpacity(0.1),
                child: const AppbarWidget(),
              ),
            ),
          ),
        ),
      ),
      SliverList(
          delegate: SliverChildListDelegate([
        const SizedBox(
          height: 32,
        ),
        Center(
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: Container(
                width: 650,
                height: 350,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    border: Border.all(
                        color: Colors.white.withOpacity(0.2), width: 2.5),
                    borderRadius: const BorderRadius.all(Radius.circular(25))),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 10, 25, 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(top: 40),
                              child: Image.asset(
                                'assets/h.png',
                                width: 70,
                                height: 70,
                              )),
                          GifView.asset(
                            'assets/gif/nyan_cat.gif',
                            width: 60,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Seo.text(
                        text: "Raka Ryandra Guntara",
                        child: DefaultTextStyle(
                          style: GoogleFonts.oxanium(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                "Raka Ryandra Guntara",
                                speed: const Duration(milliseconds: 300),
                              )
                            ],
                            isRepeatingAnimation: false,
                          ),
                        ),
                      ),
                      Seo.text(
                        text: "Software Engineer",
                        child: DefaultTextStyle(
                          style: GoogleFonts.oxanium(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                'Software Engineer',
                                speed: const Duration(milliseconds: 600),
                              ),
                            ],
                            isRepeatingAnimation: false,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        GifView.asset(
          'assets/gif/nyan_cat.gif',
        ),
        // Tambahkan konten lain jika perlu untuk tes scroll
        Container(height: 500, color: Colors.deepPurple.withOpacity(0.5)),
        Container(height: 500, color: Colors.deepPurple.withOpacity(0.5)),
        Container(height: 500, color: Colors.deepPurple.withOpacity(0.5)),
        Container(height: 500, color: Colors.deepPurple.withOpacity(0.5)),
      ]))
    ]);
  }
}
