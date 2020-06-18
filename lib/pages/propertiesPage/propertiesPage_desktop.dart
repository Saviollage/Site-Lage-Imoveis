import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:site_lage/controllers/search_controller.dart';
import 'package:site_lage/widgets/homePage/propertyCard.dart';
import 'package:site_lage/widgets/propertiesPage/notFoundWidget.dart';
import 'package:site_lage/widgets/propertiesPage/propertiesTitleWidget.dart';

class PropertiesPageDesktop extends StatelessWidget {
  final searchController = GetIt.I.get<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        PropertiesTitleWidget(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Observer(
            builder: (context) => searchController.filteredList.length > 0?GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: MediaQuery.of(context).size.width ~/ 300,
                  childAspectRatio: 400 / 300),
              itemCount:searchController.filteredList.length,
              itemBuilder: (context, index) => PropertyCard(
                property:searchController.filteredList.elementAt(index),
              ),
            ):
            NotFoundWidget(),
          ),
        )
      ],
    );
  }
}
