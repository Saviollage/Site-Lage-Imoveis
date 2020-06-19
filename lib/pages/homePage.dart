import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:site_lage/pages/homePage/homePage_desktop.dart';
import 'package:site_lage/pages/homePage/homePage_mobile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        child: ScreenTypeLayout(
          desktop: HomePageDesktop(),
          tablet: HomePageDesktop(),
          mobile: HomePageMobile(),
        ));
  }
}
