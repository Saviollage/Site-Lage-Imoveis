import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:site_lage/components/colors.dart';
import 'package:site_lage/controllers/api_controller.dart';
import 'package:site_lage/widgets/homePage/propertiesList.dart';
import 'package:site_lage/widgets/homePage/searchWidget.dart';

class HomePageDesktop extends StatelessWidget {
  final apiController = GetIt.I.get<ApiController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchWidget(
            number: Random().nextInt(5) + 1,
          ),
          SizedBox(
            height: 50,
          ),
          ListTile(
            enabled: false,
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            title: Text(
              "Destaques",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            trailing: FlatButton(
                onPressed: null,
                child: Text(
                  "Ver mais",
                  style: TextStyle(color: LageColors.yellow),
                )),
          ),
          Observer(
            builder: (context) => PropertiesList(
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
          ListTile(
            enabled: false,
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            title: Text(
              "Casas",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            trailing: FlatButton(
                onPressed: null,
                child: Text(
                  "Ver mais",
                  style: TextStyle(color: LageColors.yellow),
                )),
          ),
          Observer(
            builder: (context) => PropertiesList(
              properties: apiController.properties.toList(),
              type: "Casa",
            ),
          ),
          ListTile(
            enabled: false,
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            title: Text(
              "Apartamentos",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            trailing: FlatButton(
                onPressed: null,
                child: Text(
                  "Ver mais",
                  style: TextStyle(color: LageColors.yellow),
                )),
          ),
          Observer(
            builder: (context) => PropertiesList(
              properties: apiController.properties.toList(),
              type: "Apartamento",
            ),
          ),
          ListTile(
            enabled: false,
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            title: Text(
              "Sítios e Lotes",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            trailing: FlatButton(
                onPressed: null,
                child: Text(
                  "Ver mais",
                  style: TextStyle(color: LageColors.yellow),
                )),
          ),
          Observer(
            builder: (context) => PropertiesList(
              properties: apiController.properties.toList(),
              type: "Sítio,Lote",
            ),
          ),
          SizedBox(height: 30)
        ],
      ),
    );
  }
}
