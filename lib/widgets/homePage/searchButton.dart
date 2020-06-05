import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:site_lage/components/colors.dart';
import 'package:site_lage/controllers/search_controller.dart';

class SearchButton extends StatelessWidget {
  final searchController = GetIt.I.get<SearchController>();
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => searchController.showData(),
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width * 0.6,
          padding: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: LageColors.yellow,
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              'BUSCAR',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
            ),
          ),
        ));
  }
}
