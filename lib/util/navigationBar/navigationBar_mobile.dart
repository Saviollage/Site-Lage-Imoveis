import 'package:flutter/material.dart';
import 'package:site_lage/util/navigationBar/navigationBarLogo.dart';

class NavigationBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavigationBarLogo(),
          IconButton(icon: Icon(Icons.menu), onPressed: null)
        ],
      ),
    );
  }
}
