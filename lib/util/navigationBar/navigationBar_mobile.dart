import 'package:flutter/material.dart';
import 'package:site_lage/components/colors.dart';
import 'package:site_lage/pages/aboutUsPage.dart';
import 'package:site_lage/pages/contactPage.dart';
import 'package:site_lage/pages/homePage.dart';
import 'package:site_lage/pages/properiesPage.dart';
import 'package:site_lage/pages/simulationPage.dart';
import 'package:site_lage/util/navigationBar/navigationBarLogo.dart';

class NavigationBarMobile extends StatelessWidget {
  final pages = [
    HomePage.route,
    AboutUsPage.route,
    ContactPage.route,
    SimulationPage.route,
    PropertiesPage.route
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      height: 100,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavigationBarLogo(
              onPressed: () => Navigator.of(context).pushNamed(HomePage.route)),
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
              onChanged: (index) =>
                  Navigator.of(context).pushNamed(pages[index]))
          //IconButton(icon: Icon(Icons.menu), onPressed: null)
        ],
      ),
    );
  }
}
