import 'package:flutter/material.dart';
import 'package:site_lage/widgets/homePage/dropdownButtons.dart';
import 'package:site_lage/widgets/homePage/searchBar.dart';
import 'package:site_lage/widgets/homePage/searchButton.dart';

class SearchWidget extends StatelessWidget {
  final int number;

  const SearchWidget({Key key, this.number}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://lageimoveis.s3.amazonaws.com/Lage_Wpp_$number.jpg")),
      ),
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          color: Colors.black.withOpacity(0.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: Text(
                  "Faça sua busca online",
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
          )),
    );
  }
}
