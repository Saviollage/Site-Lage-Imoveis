import 'package:flutter/material.dart';
import 'package:site_lage/widgets/contactPage/dataWidget.dart';
import 'package:site_lage/widgets/contactPage/mapWidget.dart';
import 'package:site_lage/widgets/contactPage/titleWidget.dart';

class ContactPageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            ContactTitleWidget(
              size: 300,
              textSize: 35,
            ),
            DataWidget(
              percentSize: 0.9,
              fontSize: 30,
            ),
            SizedBox(
              height: 30,
            ),
            Container(height: 300, child: MapWidget(size: 0.9)),
            SizedBox(
              height: 50,
            ),
          ],
        ));
  }
}
