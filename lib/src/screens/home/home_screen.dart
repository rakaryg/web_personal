import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_personal/src/helpers/colors/custom_colors.dart';
import 'package:web_personal/src/widgets/appbar/appbar_widget.dart';
import 'package:web_personal/src/widgets/appbar/appbar_widget_action.dart';
import 'package:web_personal/src/widgets/appbar/appbar_widget_title.dart';
import 'package:web_personal/src/widgets/home/home_widgets.dart';
import 'package:web_personal/src/widgets/home/home_widgets_mobile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: Builder(builder: (context) {
          return const AppbarWidget();
        }),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return const HomeWidgetsMobile();
          } else {
            return const HomeWidgets();
          }
        },
      ),
    );
  }
}
