import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:site_lage/controllers/page_controller.dart';
import 'package:site_lage/pages/aboutUsPage.dart';
import 'package:site_lage/pages/contactPage.dart';
import 'package:site_lage/pages/homePage.dart';
import 'package:site_lage/pages/loginPage.dart';
import 'package:site_lage/util/foorter/footer.dart';
import 'package:site_lage/util/navigationBar/navigationBar.dart';

class RootPage extends StatelessWidget {
  final pageController = GetIt.I.get<CurrentPageController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overScroll) {
          overScroll.disallowGlow();
          return false;
        },
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavigationBar(),
              Observer(
                  builder: (context) => pageController.pageIndex == 0
                      ? HomePage()
                      : pageController.pageIndex == 1
                          ? AboutUsPage()
                          : pageController.pageIndex == 2
                              ? ContactPage()
                              : LoginPage()),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}
