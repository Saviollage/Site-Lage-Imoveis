import 'package:flutter/material.dart';
import 'package:site_lage/models/property.dart';

class PropertyCard extends StatelessWidget {
  final Property property;

  const PropertyCard({Key key, this.property}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 120,
      width: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(blurRadius: 5, color: Colors.grey, offset: Offset(3, 3))
      ]),
    );
  }
}
