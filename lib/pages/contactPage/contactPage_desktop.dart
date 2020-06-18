import 'package:flutter/material.dart';
import 'package:site_lage/widgets/contactPage/dataWidget.dart';
import 'package:site_lage/widgets/contactPage/mapWidget.dart';
import 'package:site_lage/widgets/contactPage/titleWidget.dart';

class ContactPageDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        ContactTitleWidget(
          size: 600,
          textSize: 70,
        ),
        Container(
            height: 600,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MapWidget(
                  size: 0.35,
                ),
                Expanded(
                  child: DataWidget(
                    percentSize: 0.4,
                    fontSize: 40,
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
