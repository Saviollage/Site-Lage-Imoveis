import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:site_lage/controllers/search_controller.dart';
import 'package:site_lage/widgets/propertiesPage/notFoundWidget.dart';
import 'package:site_lage/widgets/propertiesPage/propertiesTitleWidget.dart';
import 'package:site_lage/widgets/propertiesPage/propertyCardTile.dart';
import 'package:skeleton_text/skeleton_text.dart';

class PropertiesPageMobile extends StatelessWidget {
  final searchController = GetIt.I.get<SearchController>();
  final AsyncSnapshot snapshot;

  PropertiesPageMobile({Key key, @required this.snapshot}) : super(key: key);

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
        snapshot.connectionState == ConnectionState.waiting
            ? ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: searchController.filteredList.length,
                itemBuilder: (context, index) => SkeletonAnimation(
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        padding: EdgeInsets.symmetric(vertical: 2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey),
                      ),
                    ))
            : Observer(
                builder: (context) => searchController.filteredList.length > 0
                    ? ConstrainedBox(
                        constraints: BoxConstraints(minHeight: 500),
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: searchController.filteredList.length,
                          itemBuilder: (context, index) => PropertyCardTile(
                            property:
                                searchController.filteredList.elementAt(index),
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
