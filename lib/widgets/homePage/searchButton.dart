import 'package:flutter/material.dart';
import 'package:site_lage/components/colors.dart';

class SearchButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: MediaQuery.of(context).size.width * 0.6,
        padding: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
            color: LageColors.yellow, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            'BUSCAR',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ));
  }
}
