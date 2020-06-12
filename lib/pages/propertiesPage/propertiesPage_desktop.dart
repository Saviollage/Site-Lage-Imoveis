import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:site_lage/controllers/api_controller.dart';
import 'package:site_lage/widgets/homePage/propertyCard.dart';

class PropertiesPageDesktop extends StatelessWidget {
  final apiController = GetIt.I.get<ApiController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Observer(
        builder: (context) => GridView.count(
          shrinkWrap: true,
          crossAxisCount: 5,
          children: List.generate(
              apiController.properties.length,
              (index) => PropertyCard(
                    property: apiController.properties[index],
                  )),
        ),
      ),
    );
  }
}
