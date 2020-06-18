import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:site_lage/components/colors.dart';
import 'package:site_lage/controllers/search_controller.dart';

class DropdownButtons extends StatelessWidget {
  final searchController = GetIt.I.get<SearchController>();

  final double percentSize;

  final double size;

  DropdownButtons({Key key, @required this.size, @required this.percentSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: size,
        width: MediaQuery.of(context).size.width * percentSize,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * (percentSize / 2.1),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Observer(
                builder: (context) => DropdownButton(
                  isExpanded: true,
                  underline: Container(),
                  value: searchController.propertyType,
                  style:
                      TextStyle(fontSize: size * 0.4, color: LageColors.black),
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
              width: MediaQuery.of(context).size.width * (percentSize / 2),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Observer(
                builder: (context) => DropdownButton(
                  isExpanded: true,
                  underline: Container(),
                  value: searchController.method,
                  style:
                      TextStyle(fontSize: size * 0.4, color: LageColors.black),
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
