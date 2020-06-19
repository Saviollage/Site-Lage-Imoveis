import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:site_lage/components/colors.dart';
import 'package:site_lage/controllers/page_controller.dart';
import 'package:site_lage/models/property.dart';

class PropertyCardMobile extends StatelessWidget {
  final pageController = GetIt.I.get<CurrentPageController>();
  final scrollController = GetIt.I.get<ScrollController>();
  final Property property;

  PropertyCardMobile({Key key, this.property});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: NetworkImage(
                property.images[0],
              ),
              fit: BoxFit.fill),
          boxShadow: [
            BoxShadow(blurRadius: 10, offset: Offset(5, 5), color: Colors.grey)
          ]),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.7),
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10)),
          ),
          child: ListTile(
            title: Text(
              property.title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              property.address,
              style: TextStyle(color: LageColors.yellow, fontSize: 10),
            ),
            trailing: Text(
              property.forSale ? "Venda" : "Aluguel",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontStyle: FontStyle.italic),
            ),
            onTap: () {
              
              pageController.setProperty(property);
              pageController.changePage(5);
              scrollController.animateTo(0,
                    duration: new Duration(milliseconds: 500),
                    curve: Curves.linear);
            },
          ),
        ),
      ),
    );
  }
}
