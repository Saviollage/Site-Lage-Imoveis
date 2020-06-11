import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:site_lage/pages/aboutUsPage/aboutUsPage_desktop.dart';
import 'package:site_lage/pages/aboutUsPage/aboutUsPage_mobile.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: ScreenTypeLayout(
        desktop: AboutUsPageDesktop(),
        tablet: AboutUsPageDesktop(),
        mobile: AboutUsPageMobile(),
      ),
    );
  }
}
