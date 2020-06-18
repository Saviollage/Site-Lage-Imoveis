import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:site_lage/controllers/search_controller.dart';
import 'package:site_lage/widgets/propertiesPage/notFoundWidget.dart';
import 'package:site_lage/widgets/propertiesPage/propertiesTitleWidget.dart';
import 'package:site_lage/widgets/propertiesPage/propertyCardTile.dart';

class PropertiesPageMobile extends StatelessWidget {
  final searchController = GetIt.I.get<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        PropertiesTitleWidget(
          percentSize: 0.8,
          size: 300,
          textSize: 35,
        ),
        Observer(
          builder: (context) => searchController.filteredList.length > 0
              ? ConstrainedBox(
                  constraints: BoxConstraints(minHeight: 500),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: searchController.filteredList.length,
                    itemBuilder: (context, index) => PropertyCardTile(
                      property: searchController.filteredList.elementAt(index),
                    ),
                  ),
                )
              : Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: NotFoundWidget(
                    size: 150,
                  ),
                ),
        ),
      ],
    );
  }
}
