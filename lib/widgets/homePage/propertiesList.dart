import 'package:flutter/material.dart';
import 'package:site_lage/models/property.dart';
import 'package:site_lage/widgets/homePage/propertyCard.dart';
import 'package:site_lage/widgets/homePage/propertyCardMobile.dart';

class PropertiesList extends StatelessWidget {
  final List<Property> properties;
  final String type;
  final double size;

  const PropertiesList(
      {Key key, @required this.properties, this.type, @required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List filteredProperties = type == null
        /*  Retorna tudo */
        ? properties
        : type.contains(",")
            ? properties
                .where((element) => type.split(",").contains(element.type))
                .toList()
            : properties.where((element) => element.type == type).toList();

    return Container(
      height: size,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
        scrollDirection: Axis.horizontal,
        itemCount: filteredProperties == null ? 0 : filteredProperties.length,
        itemBuilder: (context, index) => size == 300
            ? PropertyCard(
                property: filteredProperties[index],
              )
            : PropertyCardMobile(
                property: filteredProperties[index],
              ),
      ),
    );
  }
}
