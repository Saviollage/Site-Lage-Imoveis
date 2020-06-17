import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:site_lage/controllers/email_controller.dart';
import 'package:site_lage/pages/contactPage/contactPage_desktop.dart';
import 'package:site_lage/pages/contactPage/contactPage_mobile.dart';

class ContactPage extends StatelessWidget {
  final emailController = GetIt.I.get<EmailController>();
  @override
  Widget build(BuildContext context) {
    emailController.reset();
    return Container(
        alignment: Alignment.topCenter,
        child: ScreenTypeLayout(
          desktop: ContactPageDesktop(),
          tablet: ContactPageDesktop(),
          mobile: ContactPageMobile(),
        ));
  }
}
