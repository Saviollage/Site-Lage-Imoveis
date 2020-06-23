import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:site_lage/controllers/api_controller.dart';
import 'package:site_lage/controllers/search_controller.dart';
import 'package:site_lage/pages/homePage/homePage_desktop.dart';
import 'package:site_lage/pages/homePage/homePage_mobile.dart';
import 'package:site_lage/util/foorter/footer.dart';
import 'package:site_lage/util/navigationBar/navigationBar.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  static const route = '/home';
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  final apiController = GetIt.I.get<ApiController>();
  final searchController = GetIt.I.get<SearchController>();

  @override
  void initState() {
    if (apiController.properties == null ||
        apiController.properties.length == 0)
      apiController.getAllproperties().whenComplete(
          () => searchController.getProperties(apiController.propertiesList));
    super.initState();
  }

  @override
  void dispose() {
    
    super.dispose();
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
                ConstrainedBox(
                    constraints: BoxConstraints(
                        minHeight: MediaQuery.of(context).size.height * 0.85),
                    child: FutureBuilder(
                      future: apiController.getAllproperties(),
                      builder: (context, snapshot) => Container(
                          alignment: Alignment.topCenter,
                          child: ScreenTypeLayout(
                            desktop: HomePageDesktop(
                              snapshot: snapshot,
                            ),
                            tablet: HomePageDesktop(
                              snapshot: snapshot,
                            ),
                            mobile: HomePageMobile(
                              snapshot: snapshot,
                            ),
                          )),
                    )),
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
