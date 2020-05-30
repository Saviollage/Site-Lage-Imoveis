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
          NavigationBarLogo(
            onPressed: () => print("Home"),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              NavigationBarItem(
                title: "Sobre nós",
                onPressed: () => print('Sobre nós'),
              ),
              SizedBox(
                width: 30,
              ),
              NavigationBarItem(
                title: "Contato",
                onPressed: () => print('Contato'),
              ),
              SizedBox(
                width: 30,
              ),
              NavigationBarItem(
                styled: true,
                title: "Entrar",
                onPressed: () => print("Entrar"),
              )
            ],
          )
        ],
      ),
    );
  }
}
