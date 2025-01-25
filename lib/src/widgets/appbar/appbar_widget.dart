import 'package:flutter/material.dart';
import 'package:web_personal/src/widgets/appbar/appbar_widget_action.dart';
import 'package:web_personal/src/widgets/appbar/appbar_widget_action_mobile.dart';
import 'package:web_personal/src/widgets/appbar/appbar_widget_title.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return AppBar(
            toolbarHeight: 90,
            centerTitle: false,
            automaticallyImplyLeading: false,
            elevation: 0,
            scrolledUnderElevation: 0,
            backgroundColor: Colors.white,
            title: const AppbarWidgetTitle(),
            actions: const [AppbarWidgetAction()],
          );
        } else {
          return AppBar(
            toolbarHeight: 90,
            centerTitle: false,
            automaticallyImplyLeading: false,
            elevation: 0,
            scrolledUnderElevation: 0,
            backgroundColor: Colors.white,
            actions: const [AppbarWidgetActionMobile()],
          );
        }
      },
    );
  }
}
