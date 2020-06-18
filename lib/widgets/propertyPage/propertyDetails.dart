import 'package:flutter/material.dart';
import 'package:site_lage/components/colors.dart';
import 'package:site_lage/models/property.dart';
import 'package:site_lage/widgets/contactPage/nameBar.dart';
import 'package:site_lage/widgets/contactPage/subjectBar.dart';
import 'package:site_lage/widgets/contactPage/submitButton.dart';
import 'package:site_lage/widgets/contactPage/textBar.dart';
import 'package:site_lage/widgets/propertyPage/propertyTitle.dart';
import 'package:url_launcher/url_launcher.dart';

class PropertyDetails extends StatelessWidget {
  final Property property;
  final double percentSize;

  PropertyDetails(
      {Key key, @required this.property, @required this.percentSize})
      : super(key: key);

  String getPrice() {
    String price = property.price.toString();
    String aux = "";

    for (int i = 0; i < price.length; i++) {
      aux = price[price.length - i - 1] + aux;
      if ((i + 1) % 3 == 0 && (i + 1) < price.length) aux = "." + aux;
    }
    price = aux;
    price += ",00";
    return price;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * percentSize,
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
            subtitle: Text(
              property.description,
              style: TextStyle(
                  color: LageColors.yellow,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          PropertyTitle(
            icon: Icons.pin_drop,
            title: property.address,
            subtitle: "Endereço",
          ),
          property.qtdRooms == null
              ? Container()
              : PropertyTitle(
                  icon: Icons.hotel,
                  title: property.qtdRooms.toString(),
                  subtitle: "Quartos",
                ),
          property.qtdBathrooms == null
              ? Container()
              : PropertyTitle(
                  icon: Icons.hot_tub,
                  title: property.qtdBathrooms.toString(),
                  subtitle: "Banheiros",
                ),
          property.qtdGarage == null
              ? Container()
              : PropertyTitle(
                  icon: Icons.directions_car,
                  title: property.qtdGarage.toString(),
                  subtitle: "Vagas de garagem",
                ),
          property.haveSuit == null
              ? Container()
              : PropertyTitle(
                  icon: property.haveSuit ? Icons.check_circle : Icons.cancel,
                  title:
                      property.haveSuit ? "Possui Suíte" : "Não Possui Suíte",
                  subtitle: "",
                ),
          property.frontDimensions == null
              ? Container()
              : PropertyTitle(
                  icon: Icons.photo_size_select_small,
                  title: property.frontDimensions.toString() + "m",
                  subtitle: "Metros de frente",
                ),
          property.sideDimensions == null
              ? Container()
              : PropertyTitle(
                  icon: Icons.photo_size_select_small,
                  title: property.sideDimensions.toString() + "m",
                  subtitle: "Metros de lado",
                ),
          property.totalArea == null
              ? Container()
              : PropertyTitle(
                  icon: Icons.border_outer,
                  title: property.totalArea.toString() + "m²",
                  subtitle: "Área Total",
                ),
          PropertyTitle(
            icon: Icons.swap_horiz,
            title: property.forSale ? "Venda" : "Locação",
            subtitle: "Transação",
          ),
          PropertyTitle(
            icon: Icons.monetization_on,
            title: "R\$" + getPrice(),
            subtitle: "Preço",
          ),
          Container(
            height: 1,
            color: Colors.grey,
          ),
          

          
        ],
      ),
    );
  }
}
