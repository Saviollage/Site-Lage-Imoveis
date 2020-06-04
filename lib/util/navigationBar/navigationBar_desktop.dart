import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:site_lage/controllers/page_controller.dart';
import 'package:site_lage/util/navigationBar/navigationBarItem.dart';
import 'package:site_lage/util/navigationBar/navigationBarLogo.dart';

class NavigationBarDesktopAndTablet extends StatelessWidget {
  
  final pageController = GetIt.I.get<CurrentPageController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavigationBarLogo(
            onPressed: () => pageController.changePage(0)
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              NavigationBarItem(
                title: "Sobre nós",
                onPressed: () => pageController.changePage(1),
              ),
              SizedBox(
                width: 30,
              ),
              NavigationBarItem(
                title: "Contato",
                onPressed: () => pageController.changePage(2),
              ),
              SizedBox(
                width: 30,
              ),
              NavigationBarItem(
                styled: false,
                title: "Simuladores",
                onPressed: () => pageController.changePage(3),
              )
            ],
          )
        ],
      ),
    );
  }
}
