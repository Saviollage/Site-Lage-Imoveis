import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:site_lage/controllers/search_controller.dart';
import 'package:site_lage/pages/homePage/homePage_desktop.dart';
import 'package:site_lage/pages/homePage/homePage_mobile.dart';

class HomePage extends StatelessWidget {
  final searchController = GetIt.I.get<SearchController>();
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
