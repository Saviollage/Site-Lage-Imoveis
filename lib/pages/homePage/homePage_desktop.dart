import 'package:flutter/material.dart';
import 'package:site_lage/components/colors.dart';
import 'package:site_lage/widgets/homePage/propertiesList.dart';
import 'package:site_lage/widgets/homePage/searchWidget.dart';

class HomePageDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchWidget(),
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
          PropertiesList(
            type: 'Destaque',
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
          PropertiesList(
            type: 'Casas',
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
          PropertiesList(
            type: 'Apartamentos',
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
          PropertiesList(
            type: 'Sitio/Lote',
          ),
          SizedBox(height: 30)
        ],
      ),
    );
  }
}
