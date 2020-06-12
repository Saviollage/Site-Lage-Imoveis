import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:site_lage/controllers/api_controller.dart';
import 'package:site_lage/widgets/homePage/propertyCard.dart';
import 'package:site_lage/widgets/propertiesPage/propertiesTitleWidget.dart';

class PropertiesPageDesktop extends StatelessWidget {
  final apiController = GetIt.I.get<ApiController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        PropertiesTitleWidget(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Observer(
            builder: (context) => GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: MediaQuery.of(context).size.width ~/ 300,
                  childAspectRatio: 400 / 300),
              itemCount: apiController.properties.length,
              itemBuilder: (context, index) => PropertyCard(
                property: apiController.properties.elementAt(index),
              ),
            ),
          ),
        )
      ],
    );
  }
}
