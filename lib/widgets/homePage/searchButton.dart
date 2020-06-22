import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:site_lage/components/colors.dart';
import 'package:site_lage/controllers/search_controller.dart';
import 'package:site_lage/pages/properiesPage.dart';

class SearchButton extends StatelessWidget {
  final searchController = GetIt.I.get<SearchController>();

  final double size;
  final double percentSize;

  SearchButton({Key key, @required this.size, @required this.percentSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => 
                Navigator.of(context)
                    .pushNamed(PropertiesPage.route),
        child: Container(
          height: size,
         width: MediaQuery.of(context).size.width * percentSize,
          padding: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: LageColors.yellow,
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              'BUSCAR',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: size*0.4),
            ),
          ),
        ));
  }
}
