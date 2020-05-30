import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:site_lage/controllers/page_controller.dart';

class ContactPage extends StatelessWidget {
  final pageController = GetIt.I.get<CurrentPageController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.blue,
    );
  }
}
