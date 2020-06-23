import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:site_lage/components/colors.dart';
import 'package:site_lage/controllers/search_controller.dart';
import 'package:site_lage/pages/properiesPage.dart';
import 'package:site_lage/widgets/homePage/propertiesList.dart';
import 'package:site_lage/widgets/homePage/propertiesListLoading.dart';
import 'package:site_lage/widgets/homePage/searchWidget.dart';

class HomePageMobile extends StatelessWidget {
  final searchController = GetIt.I.get<SearchController>();

  final AsyncSnapshot snapshot;

  HomePageMobile({Key key, @required this.snapshot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
          (snapshot.connectionState == ConnectionState.waiting
              ? PropertiesListLoading(size: 200)
              : PropertiesList(
                  size: 200,
                  limit: 5,
                  properties: snapshot.data,
                )),
          Container(
            margin: EdgeInsets.symmetric(vertical: 25),
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              "https://lageimoveis.s3.amazonaws.com/Lage_01.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          snapshot.hasData &&
                  List.from(snapshot.data)
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
                        Navigator.of(context).pushNamed(PropertiesPage.route);
                      },
                      child: Text(
                        "Ver mais",
                        style: TextStyle(color: LageColors.yellow),
                      )),
                ),
          snapshot.hasData &&
                  List.from(snapshot.data)
                          .where((element) => element.type == "Casa")
                          .length ==
                      0
              ? Container()
              : (snapshot.connectionState == ConnectionState.waiting
                  ? PropertiesListLoading(size: 300)
                  : PropertiesList(
                      size: 200,
                      properties: snapshot.data.toList(),
                      type: "Casa",
                    )),
          snapshot.hasData &&
                  List.from(snapshot.data)
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
                        Navigator.of(context).pushNamed(PropertiesPage.route);
                      },
                      child: Text(
                        "Ver mais",
                        style: TextStyle(color: LageColors.yellow),
                      )),
                ),
          snapshot.hasData &&
                  List.from(snapshot.data)
                          .where((element) => element.type == "Apartamento")
                          .length ==
                      0
              ? Container()
              : (snapshot.connectionState == ConnectionState.waiting
                  ? PropertiesListLoading(size: 300)
                  : PropertiesList(
                      size: 200,
                      properties: snapshot.data.toList(),
                      type: "Apartamento",
                    )),
          snapshot.hasData &&
                  List.from(snapshot.data)
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
                        Navigator.of(context).pushNamed(PropertiesPage.route);
                      },
                      child: Text(
                        "Ver mais",
                        style: TextStyle(color: LageColors.yellow),
                      )),
                ),
          snapshot.hasData &&
                  List.from(snapshot.data)
                          .where((element) => element.type == "Sítio")
                          .length ==
                      0
              ? Container()
              : (snapshot.connectionState == ConnectionState.waiting
                  ? PropertiesListLoading(size: 300)
                  : PropertiesList(
                      size: 200,
                      properties: snapshot.data.toList(),
                      type: "Sítio",
                    )),
          snapshot.hasData &&
                  List.from(snapshot.data)
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
                        Navigator.of(context).pushNamed(PropertiesPage.route);
                      },
                      child: Text(
                        "Ver mais",
                        style: TextStyle(color: LageColors.yellow),
                      )),
                ),
          snapshot.hasData &&
                  List.from(snapshot.data)
                          .where((element) => element.type == "Lote")
                          .length ==
                      0
              ? Container()
              : (snapshot.connectionState == ConnectionState.waiting
                  ? PropertiesListLoading(size: 300)
                  : PropertiesList(
                      size: 200,
                      properties: snapshot.data.toList(),
                      type: "Lote",
                    )),
          SizedBox(height: 30)
        ],
      ),
    );
  }
}
