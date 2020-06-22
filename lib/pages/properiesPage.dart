import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:site_lage/pages/propertiesPage/propertiesPage_desktop.dart';
import 'package:site_lage/pages/propertiesPage/propertiesPage_mobile.dart';
import 'package:site_lage/util/foorter/footer.dart';
import 'package:site_lage/util/navigationBar/navigationBar.dart';
import 'package:url_launcher/url_launcher.dart';

class PropertiesPage extends StatelessWidget {
  static const route = '/properties';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification overScroll) {
            overScroll.disallowGlow();
            return false;
          },
          child:  SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NavigationBar(),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        minHeight: MediaQuery.of(context).size.height * 0.85),
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: ScreenTypeLayout(
                        desktop: PropertiesPageDesktop(),
                        tablet: PropertiesPageDesktop(),
                        mobile: PropertiesPageMobile(),
                      ),
                    ),
                  ),
                  Footer()
                ],
              ),
            ),
          
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () =>
            launch("https://api.whatsapp.com/send?phone=553138222535"),
        child: Image.asset(
          "assets/images/whatsapp-24.png",
          fit: BoxFit.none,
        ),
        backgroundColor: const Color(0xff25D366),
      ),
    );
  }
}
