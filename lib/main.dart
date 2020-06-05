import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:site_lage/controllers/api_controller.dart';
import 'package:site_lage/controllers/page_controller.dart';
import 'package:site_lage/controllers/search_controller.dart';
import 'package:site_lage/pages/rootPage.dart';

void main() {
  runApp(MyApp());
  GetIt getIt = GetIt.I;
  getIt.registerSingleton(CurrentPageController());
  getIt.registerSingleton(SearchController());
   getIt.registerSingleton(ApiController());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lage Imóveis',
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
      ),
      home: RootPage(),
    );
  }
}
