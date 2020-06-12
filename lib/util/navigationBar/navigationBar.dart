import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:site_lage/util/navigationBar/navigationBar_desktop.dart';

import 'navigationBar_mobile.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        child: ScreenTypeLayout(
          
          desktop: NavigationBarDesktopAndTablet(),
          tablet: NavigationBarDesktopAndTablet(),
          mobile: NavigationBarMobile(),
        ));
  }
}
