import 'package:flutter/material.dart';
import 'package:site_lage/models/property.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PropertyCard extends StatelessWidget {
  final Property property;

  const PropertyCard({Key key, this.property}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: 350,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: NetworkImage(
                property.images[0],
              ),
              fit: BoxFit.fill),
          boxShadow: [
            BoxShadow(blurRadius: 10, offset: Offset(5, 5), color: Colors.grey)
          ]),
    );
  }
}
