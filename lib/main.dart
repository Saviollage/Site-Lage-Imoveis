import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:site_lage/pages/homePage.dart';

void main() {
  runApp(MyApp());
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
      home: HomePage(),
    );
  }
}
