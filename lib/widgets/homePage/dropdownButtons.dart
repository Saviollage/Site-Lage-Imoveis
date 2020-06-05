import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:site_lage/controllers/search_controller.dart';

class DropdownButtons extends StatelessWidget {
  final searchController = GetIt.I.get<SearchController>();
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: MediaQuery.of(context).size.width * 0.6,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.29,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Observer(
                builder: (context) => DropdownButton(
                  isExpanded: true,
                  underline: Container(),
                  value: searchController.propertyType,
                  items: List.from(
                    searchController.propertyTypes.toList().map(
                          (e) => DropdownMenuItem(
                            value: e.toString(),
                            child: Text(
                              e.toString(),
                            ),
                          ),
                        ),
                  ),
                  onChanged: (content) =>
                      searchController.setpropertyType(content),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.29,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Observer(
                builder: (context) => DropdownButton(
                  isExpanded: true,
                  underline: Container(),
                  value: searchController.method,
                  items: List.from(
                    searchController.methodTypes.toList().map(
                          (e) => DropdownMenuItem(
                            value: e.toString(),
                            child: Text(
                              e.toString(),
                            ),
                          ),
                        ),
                  ),
                  onChanged: (content) => searchController.setMethod(content),
                ),
              ),
            )
          ],
        ));
  }
}
