import 'package:flutter/material.dart';
import 'package:site_lage/widgets/homePage/dropdownButtons.dart';
import 'package:site_lage/widgets/homePage/searchBar.dart';
import 'package:site_lage/widgets/homePage/searchButton.dart';

class PropertiesTitleWidget extends StatelessWidget {
  final double size;
  final double textSize;
  final double percentSize;

  const PropertiesTitleWidget(
      {Key key,
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
              image: AssetImage("assets/images/properties.jpg")),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: Text(
                  "Todos os imóveis",
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
                  SearchButton(
                    size: size * 0.1,
                    percentSize: percentSize,
                  )
                ],
              )
            ],
          ),
        ));
  }
}
