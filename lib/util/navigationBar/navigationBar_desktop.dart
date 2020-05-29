import 'package:flutter/material.dart';
import 'package:site_lage/util/navigationBar/navigationBarItem.dart';
import 'package:site_lage/util/navigationBar/navigationBarLogo.dart';

class NavigationBarDesktopAndTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavigationBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavigationBarItem(
                title: "Sobre nós",
              ),
              SizedBox(
                width: 60,
              ),
              NavigationBarItem(
                title: "Contato",
              )
            ],
          )
        ],
      ),
    );
  }
}
