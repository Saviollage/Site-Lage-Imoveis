import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:site_lage/models/property.dart';
import 'package:site_lage/widgets/propertyPage/propertyContact.dart';
import 'package:site_lage/widgets/propertyPage/propertyDetails.dart';
import 'package:site_lage/widgets/propertyPage/propertyPhotos.dart';

class PropertyPageDesktop extends StatelessWidget {
  final Property property;

  const PropertyPageDesktop({Key key, this.property}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height * 0.85),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  PropertyDetails(
                    property: property,
                    percentSize: 0.4,
                  ),
                  PropertyContact(
                    percentSize: 0.4,
                    initText: "Olá, estou interessado(a) em " +
                        property.title +
                        " situado(a) no endereço " +
                        property.address,
                  )
                ],
              ),
              PropertyPhotos(
                images: property.images,
                percentSize: 0.4,
              ),
            ],
          ),
        ));
  }
}
