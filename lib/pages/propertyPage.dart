import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:site_lage/models/property.dart';
import 'package:site_lage/pages/propertyPage/propertyPage_desktop.dart';
import 'package:site_lage/pages/propertyPage/propertyPage_mobile.dart';

class PropertyPage extends StatelessWidget {
  final Property property;

  const PropertyPage({Key key, this.property}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: ScreenTypeLayout(
        desktop: PropertyPageDesktop(property: property,),
        tablet: PropertyPageDesktop(property: property,),
        mobile: PropertyPageMobile(property: property,),
      ),
    );
  }
}
