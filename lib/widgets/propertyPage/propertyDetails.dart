import 'dart:math';

import 'package:flutter/material.dart';
import 'package:site_lage/components/colors.dart';
import 'package:site_lage/models/property.dart';

class PropertyDetails extends StatelessWidget {
  final Property property;

  const PropertyDetails({Key key, this.property}) : super(key: key);

  String getPrice() {
    String price = property.price.toString();
    

    //price = price.substring(0, price.length);
    price += ",00";
    return price;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ListTile(
            enabled: false,
            title: Text(
              property.title,
              style: TextStyle(
                  color: LageColors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            // subtitle: Text(
            //   "Dados",
            //   style: TextStyle(
            //       color: LageColors.yellow,
            //       fontWeight: FontWeight.bold,
            //       fontSize: 35),
            // ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: ListTile(
              enabled: false,
              leading: Icon(
                Icons.pin_drop,
                color: LageColors.yellow,
              ),
              title: Text(
                property.address,
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                "Endereço",
                style: TextStyle(
                    color: LageColors.yellow, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: ListTile(
              enabled: false,
              leading: Icon(
                Icons.description,
                color: LageColors.yellow,
              ),
              title: Text(
                property.description,
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                "Descrição",
                style: TextStyle(
                    color: LageColors.yellow, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: ListTile(
              enabled: false,
              leading: Icon(
                Icons.swap_horiz,
                color: LageColors.yellow,
              ),
              title: Text(
                property.forSale ? "Venda" : "Locação",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                "Transação",
                style: TextStyle(
                    color: LageColors.yellow, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: ListTile(
              enabled: false,
              leading: Icon(
                Icons.monetization_on,
                color: LageColors.yellow,
              ),
              title: Text(
                "R\$" + getPrice(),
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                "Preço",
                style: TextStyle(
                    color: LageColors.yellow, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
