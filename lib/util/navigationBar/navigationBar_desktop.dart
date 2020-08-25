import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:site_lage/controllers/email_controller.dart';
import 'package:site_lage/controllers/search_controller.dart';
import 'package:site_lage/pages/aboutUsPage.dart';
import 'package:site_lage/pages/contactPage.dart';
import 'package:site_lage/pages/homePage.dart';
import 'package:site_lage/pages/properiesPage.dart';
import 'package:site_lage/pages/simulationPage.dart';
import 'package:site_lage/util/navigationBar/navigationBarItem.dart';
import 'package:site_lage/util/navigationBar/navigationBarLogo.dart';

class NavigationBarDesktopAndTablet extends StatelessWidget {
  final searchController = GetIt.I.get<SearchController>();
  final emailController = GetIt.I.get<EmailController>();
  final observer = GetIt.I.get<FirebaseAnalyticsObserver>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 70),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavigationBarLogo(onPressed: () {
            observer.analytics.setCurrentScreen(
              screenName: HomePage.route,
            );
            searchController.reset();
            Navigator.of(context).pushNamed(HomePage.route);
          }),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              NavigationBarItem(
                  title: "Sobre nós",
                  onPressed: () {
                    observer.analytics.setCurrentScreen(
                      screenName: AboutUsPage.route,
                    );
                    Navigator.of(context).pushNamed(AboutUsPage.route);
                  }),
              SizedBox(
                width: 30,
              ),
              NavigationBarItem(
                title: "Contato",
                onPressed: () {
                  observer.analytics.setCurrentScreen(
                    screenName: ContactPage.route,
                  );
                  Navigator.of(context).pushNamed(ContactPage.route);
                },
              ),
              SizedBox(
                width: 30,
              ),
              NavigationBarItem(
                styled: false,
                title: "Simuladores",
                onPressed: () {
                  observer.analytics.setCurrentScreen(
                    screenName: SimulationPage.route,
                  );
                  Navigator.of(context).pushNamed(SimulationPage.route);
                },
              ),
              SizedBox(
                width: 30,
              ),
              NavigationBarItem(
                title: "Todos os Imóveis",
                onPressed: () {
                  observer.analytics.setCurrentScreen(
                    screenName: PropertiesPage.route,
                  );
                  searchController.reset();
                  Navigator.of(context).pushNamed(PropertiesPage.route);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
