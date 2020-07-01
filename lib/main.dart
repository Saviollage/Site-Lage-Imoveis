import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:site_lage/components/colors.dart';
import 'package:site_lage/controllers/api_controller.dart';
import 'package:site_lage/controllers/email_controller.dart';
import 'package:site_lage/controllers/search_controller.dart';
import 'package:site_lage/pages/homePage.dart';
import 'package:site_lage/router/config.dart';

void main() {
  runApp(MyApp());
  GetIt getIt = GetIt.I;
  getIt.registerSingleton(ApiController());
  getIt.registerSingleton(SearchController());
  getIt.registerSingleton(EmailController());
}

class MyApp extends StatelessWidget {
  final FirebaseAnalytics analytics = FirebaseAnalytics();
  @override
  Widget build(BuildContext context) {
    FirebaseAnalyticsObserver observer =
        FirebaseAnalyticsObserver(analytics: analytics);
    GetIt.I.registerSingleton(observer);
    return MaterialApp(
      title: 'Lage Imóveis',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme:
              GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
          primaryColor: LageColors.yellow),
      initialRoute: HomePage.route,
      onGenerateRoute: RouteConfiguration.onGenerateRoute,
      navigatorObservers: [
        observer,
      ],
    );
  }
}
