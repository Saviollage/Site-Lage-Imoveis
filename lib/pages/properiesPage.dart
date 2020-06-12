import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:site_lage/pages/propertiesPage/propertiesPage_desktop.dart';
import 'package:site_lage/pages/propertiesPage/propertyPage_mobile.dart';

class PropertiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: ScreenTypeLayout(
        desktop: PropertiesPageDesktop(),
        tablet: PropertiesPageDesktop(),
        mobile: PropertiesPageMobile(),
      ),
    );
  }
}
