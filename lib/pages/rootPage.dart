import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:site_lage/controllers/api_controller.dart';
import 'package:site_lage/controllers/page_controller.dart';
import 'package:site_lage/pages/aboutUsPage.dart';
import 'package:site_lage/pages/contactPage.dart';
import 'package:site_lage/pages/homePage.dart';
import 'package:site_lage/pages/loginPage.dart';
import 'package:site_lage/pages/simulationPage.dart';
import 'package:site_lage/util/foorter/footer.dart';
import 'package:site_lage/util/navigationBar/navigationBar.dart';
import 'package:url_launcher/url_launcher.dart';

class RootPage extends StatefulWidget {
  @override
  RootPageState createState() => RootPageState();
}

class RootPageState extends State<RootPage> {
  final pageController = GetIt.I.get<CurrentPageController>();
  final apiController = GetIt.I.get<ApiController>();

  @override
  void initState() {
    apiController.getAllproperties();
    super.initState();
  }

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
                                : pageController.pageIndex == 3
                                    ? SimulationPage()
                                    : LoginPage()),
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
          "images/whatsapp-24.png",
          fit: BoxFit.none,
        ),
        backgroundColor: const Color(0xff25D366),
      ),
    );
  }
}
