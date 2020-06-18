import 'package:flutter/material.dart';
import 'package:site_lage/widgets/homePage/dropdownButtons.dart';
import 'package:site_lage/widgets/homePage/searchBar.dart';
import 'package:site_lage/widgets/homePage/searchButton.dart';

class SearchWidget extends StatelessWidget {
  final int number;
  final double size;
  final double textSize;
  final double percentSize;

  const SearchWidget(
      {Key key,
      this.number,
      @required this.size,
      @required this.textSize,
      @required this.percentSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage("assets/images/Lage_Wpp_" + number.toString() + ".jpg"),
      )),
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          color: Colors.black.withOpacity(0.8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: Text(
                  "Faça sua busca online",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: textSize,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                children: [
                  SearchBar(
                    size: size * 0.1,
                    percentSize: percentSize,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DropdownButtons(
                    size: size * 0.1,
                    percentSize: percentSize,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SearchButton(size: size * 0.1, percentSize: percentSize)
                ],
              )
            ],
          )),
    );
  }
}
