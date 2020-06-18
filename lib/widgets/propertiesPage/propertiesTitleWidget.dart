import 'package:flutter/material.dart';
import 'package:site_lage/widgets/homePage/dropdownButtons.dart';
import 'package:site_lage/widgets/homePage/searchBar.dart';
import 'package:site_lage/widgets/homePage/searchButton.dart';

class PropertiesTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 600,
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
                      fontSize: 70,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                children: [
                  SearchBar(),
                  SizedBox(
                    height: 10,
                  ),
                  DropdownButtons(),
                  SizedBox(
                    height: 10,
                  ),
                  SearchButton()
                ],
              )
            ],
          ),
        ));
  }
}
