import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:site_lage/components/colors.dart';
import 'package:site_lage/controllers/api_controller.dart';
import 'package:site_lage/controllers/page_controller.dart';
import 'package:site_lage/controllers/search_controller.dart';
import 'package:site_lage/widgets/homePage/propertiesList.dart';
import 'package:site_lage/widgets/homePage/searchWidget.dart';

class HomePageMobile extends StatelessWidget {
  final apiController = GetIt.I.get<ApiController>();

  final pageController = GetIt.I.get<CurrentPageController>();
  final searchController = GetIt.I.get<SearchController>();

  
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Observer(
      builder: (_) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchWidget(
            number: Random().nextInt(5) + 1,
            percentSize: 0.8,
            size: 300,
            textSize: 35,
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            enabled: false,
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            title: Text(
              "Destaques",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Observer(
            builder: (context) => PropertiesList(
              size: 200,
              properties: apiController.properties.toList(),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 25),
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              "https://lageimoveis.s3.amazonaws.com/Lage_01.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          new List.from(apiController.properties)
                      .where((element) => element.type == "Casa")
                      .length ==
                  0
              ? Container()
              : ListTile(
                  enabled: false,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  title: Text(
                    "Casas",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  trailing: FlatButton(
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onPressed: () {
                        searchController.setpropertyType("Casa");
                        pageController.changePage(4);
                      },
                      child: Text(
                        "Ver mais",
                        style: TextStyle(color: LageColors.yellow),
                      )),
                ),
          new List.from(apiController.properties)
                      .where((element) => element.type == "Casa")
                      .length ==
                  0
              ? Container()
              : Observer(
                  builder: (context) => PropertiesList(
                    size: 200,
                    properties: apiController.properties.toList(),
                    type: "Casa",
                  ),
                ),
          new List.from(apiController.properties)
                      .where((element) => element.type == "Apartamento")
                      .length ==
                  0
              ? Container()
              : ListTile(
                  enabled: false,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  title: Text(
                    "Apartamentos",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  trailing: FlatButton(
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onPressed: () {
                        searchController.setpropertyType("Apartamento");
                        pageController.changePage(4);
                      },
                      child: Text(
                        "Ver mais",
                        style: TextStyle(color: LageColors.yellow),
                      )),
                ),
          new List.from(apiController.properties)
                      .where((element) => element.type == "Apartamento")
                      .length ==
                  0
              ? Container()
              : Observer(
                  builder: (context) => PropertiesList(
                    size: 200,
                    properties: apiController.properties.toList(),
                    type: "Apartamento",
                  ),
                ),
          new List.from(apiController.properties)
                      .where((element) => element.type == "Sítio")
                      .length ==
                  0
              ? Container()
              : ListTile(
                  enabled: false,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  title: Text(
                    "Sítios",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  trailing: FlatButton(
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onPressed: () {
                        searchController.setpropertyType("Sítio");
                        pageController.changePage(4);
                      },
                      child: Text(
                        "Ver mais",
                        style: TextStyle(color: LageColors.yellow),
                      )),
                ),
          new List.from(apiController.properties)
                      .where((element) => element.type == "Sítio")
                      .length ==
                  0
              ? Container()
              : Observer(
                  builder: (context) => PropertiesList(
                    size: 200,
                    properties: apiController.properties.toList(),
                    type: "Sítio",
                  ),
                ),
          new List.from(apiController.properties)
                      .where((element) => element.type == "Lote")
                      .length ==
                  0
              ? Container()
              : ListTile(
                  enabled: false,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  title: Text(
                    "Lotes",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  trailing: FlatButton(
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onPressed: () {
                        searchController.setpropertyType("Lote");
                        pageController.changePage(4);
                      },
                      child: Text(
                        "Ver mais",
                        style: TextStyle(color: LageColors.yellow),
                      )),
                ),
          new List.from(apiController.properties)
                      .where((element) => element.type == "Lote")
                      .length ==
                  0
              ? Container()
              : Observer(
                  builder: (context) => PropertiesList(
                    size: 200,
                    properties: apiController.properties.toList(),
                    type: "Lote",
                  ),
                ),
          SizedBox(height: 30)
        ],
      ),
    ));
  }
}
