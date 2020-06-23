import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:site_lage/controllers/search_controller.dart';
import 'package:site_lage/widgets/homePage/propertyCard.dart';
import 'package:site_lage/widgets/propertiesPage/notFoundWidget.dart';
import 'package:site_lage/widgets/propertiesPage/propertiesTitleWidget.dart';
import 'package:skeleton_text/skeleton_text.dart';

class PropertiesPageDesktop extends StatelessWidget {
  final searchController = GetIt.I.get<SearchController>();
  final AsyncSnapshot snapshot;

  PropertiesPageDesktop({Key key, @required this.snapshot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        PropertiesTitleWidget(
          size: 600,
          textSize: 70,
          percentSize: 0.6,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: snapshot.connectionState == ConnectionState.waiting
              ? GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: MediaQuery.of(context).size.width ~/ 400,
                      childAspectRatio: 400 / 300),
                  itemCount: 10,
                  itemBuilder: (context, index) => SkeletonAnimation(
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          width: 350,
                          height: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.grey[300]),
                        ),
                      ))
              : Observer(
                  builder: (context) => searchController.filteredList.length > 0
                      ? GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount:
                                      MediaQuery.of(context).size.width ~/ 400,
                                  childAspectRatio: 400 / 300),
                          itemCount: searchController.filteredList.length,
                          itemBuilder: (context, index) => PropertyCard(
                            property:
                                searchController.filteredList.elementAt(index),
                          ),
                        )
                      : NotFoundWidget(
                          size: 300,
                        ),
                ),
        )
      ],
    );
  }
}
