import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:site_lage/pages/contactPage/contactPage_desktop.dart';
import 'package:site_lage/pages/contactPage/contactPage_mobile.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        child: ScreenTypeLayout(
          desktop: ContactPageDesktop(),
          tablet: ContactPageDesktop(),
          mobile: ContactPageMobile(),
        ));
  }
}
