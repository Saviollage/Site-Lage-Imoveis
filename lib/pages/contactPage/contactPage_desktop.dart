import 'package:flutter/material.dart';
import 'package:site_lage/widgets/contactPage/dataWidget.dart';
import 'package:site_lage/widgets/contactPage/mapWidget.dart';

class ContactPageDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [MapWidget(), Expanded(child: DataWidget())]),
    );
  }
}
