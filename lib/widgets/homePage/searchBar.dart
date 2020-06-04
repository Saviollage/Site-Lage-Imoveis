import 'package:flutter/material.dart';
import 'package:site_lage/components/colors.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.6,
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        cursorColor: LageColors.yellow,
        style: TextStyle(fontSize: 25),
        decoration: InputDecoration(
          border: InputBorder.none,
          hoverColor: LageColors.yellow,
          fillColor: LageColors.yellow,
          hintText: 'Pesquise por rua, bairro ou cidade',
          hintStyle: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
