import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:site_lage/components/colors.dart';
import 'package:site_lage/controllers/search_controller.dart';

class SearchBar extends StatelessWidget {
  final searchController = GetIt.I.get<SearchController>();
  final double size;
  final double percentSize;

  SearchBar({Key key, @required this.size, @required this.percentSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => Container(
              height: size,
              width: MediaQuery.of(context).size.width * percentSize,
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                cursorColor: LageColors.yellow,
                style: TextStyle(fontSize: size*0.4),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hoverColor: LageColors.yellow,
                  fillColor: LageColors.yellow,
                  hintText: 'Pesquise por rua, bairro ou cidade',
                  hintStyle: TextStyle(fontSize: size*0.4),
                ),
                initialValue: searchController.text,
                onChanged: searchController.setText,
              ),
            ));
  }
}
