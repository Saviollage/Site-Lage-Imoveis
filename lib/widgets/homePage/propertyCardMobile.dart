import 'package:flutter/material.dart';
import 'package:site_lage/components/colors.dart';
import 'package:site_lage/models/property.dart';
import 'package:site_lage/pages/propertyPage.dart';

class PropertyCardMobile extends StatelessWidget {
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
              style: TextStyle(color: LageColors.yellow, fontSize: 8),
            ),
            trailing: Text(
              property.forSale ? "Venda" : "Aluguel",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontStyle: FontStyle.italic),
            ),
            onTap: () => Navigator.of(context)
                .pushNamed(PropertyPage.route + '/' + property.sId),
          ),
        ),
      ),
    );
  }
}
