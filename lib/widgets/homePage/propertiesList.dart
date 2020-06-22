import 'package:flutter/material.dart';
import 'package:site_lage/widgets/homePage/propertyCard.dart';
import 'package:site_lage/widgets/homePage/propertyCardMobile.dart';

class PropertiesList extends StatelessWidget {
  final List properties;
  final String type;
  final double size;
  final int limit;

  const PropertiesList(
      {Key key,
      @required this.properties,
      this.type,
      @required this.size,
      this.limit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List filteredProperties = properties == null
        ? []
        : type == null
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
        itemCount: filteredProperties == null
            ? 0
            : limit == null ? filteredProperties.length : limit,
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
