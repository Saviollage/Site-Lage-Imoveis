import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:site_lage/components/colors.dart';
import 'package:site_lage/controllers/page_controller.dart';
import 'package:site_lage/util/navigationBar/navigationBarLogo.dart';

class NavigationBarMobile extends StatelessWidget {
  final pageController = GetIt.I.get<CurrentPageController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      height: 100,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavigationBarLogo(onPressed: () => pageController.changePage(0)),
          DropdownButton(
              icon: Icon(Icons.menu),
              underline: SizedBox(),
              items: [
                new DropdownMenuItem<int>(
                  value: 0,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.home,
                        color: LageColors.yellow,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Home')
                    ],
                  ),
                ),
                new DropdownMenuItem<int>(
                  value: 1,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.info,
                        color: LageColors.yellow,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Sobre nós')
                    ],
                  ),
                ),
                new DropdownMenuItem<int>(
                  value: 2,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.alternate_email,
                        color: LageColors.yellow,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Contato')
                    ],
                  ),
                ),
                new DropdownMenuItem<int>(
                  value: 3,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.insert_chart,
                        color: LageColors.yellow,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Simuladores')
                    ],
                  ),
                ),
                new DropdownMenuItem<int>(
                  value: 4,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.location_city,
                        color: LageColors.yellow,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Todos imóveis')
                    ],
                  ),
                )
              ],
              onChanged: (index) => pageController.changePage(index))
          //IconButton(icon: Icon(Icons.menu), onPressed: null)
        ],
      ),
    );
  }
}
