import 'package:flutter/material.dart';
import 'package:site_lage/widgets/homePage/propertyCard.dart';

class PropertiesList extends StatelessWidget {
  final String type;

  const PropertiesList({Key key, this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        child: ListView.builder(
          padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => PropertyCard(
            index: type + '-' + index.toString(),
          ),
        ));
  }
}
