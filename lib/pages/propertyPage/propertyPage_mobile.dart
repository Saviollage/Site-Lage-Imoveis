import 'package:flutter/material.dart';
import 'package:site_lage/models/property.dart';
import 'package:site_lage/widgets/propertyPage/propertyContact.dart';
import 'package:site_lage/widgets/propertyPage/propertyDetails.dart';
import 'package:site_lage/widgets/propertyPage/propertyPhotos.dart';

class PropertyPageMobile extends StatelessWidget {
  final Property property;

  const PropertyPageMobile({Key key, this.property}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height * 0.85),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              PropertyDetails(
                property: property,
                percentSize: 1,
              ),
              SizedBox(
                height: 30,
              ),
              PropertyPhotos(
                images: property.images,
                percentSize: 1,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 1,
                color: Colors.grey,
                margin: EdgeInsets.symmetric(vertical: 15),
              ),
              PropertyContact(
                  percentSize: 1,
                  initText: "Olá, estou interessado(a) em " +
                      property.title +
                      " situado(a) no endereço " +
                      property.address)
            ],
          ),
        ));
  }
}
