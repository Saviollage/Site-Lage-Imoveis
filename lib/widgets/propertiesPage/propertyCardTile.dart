import 'package:flutter/material.dart';
import 'package:site_lage/components/colors.dart';
import 'package:site_lage/models/property.dart';
import 'package:site_lage/pages/propertyPage.dart';

class PropertyCardTile extends StatelessWidget {
  final Property property;

  PropertyCardTile({Key key, @required this.property}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        padding: EdgeInsets.symmetric(vertical: 2),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(blurRadius: 5, color: Colors.grey, offset: Offset(3, 3))
        ], borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: ListTile(
            leading: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: NetworkImage(
                        property.images[0],
                      ),
                      fit: BoxFit.fill)),
            ),
            title: Text(
              property.title,
              style: TextStyle(
                  color: Colors.black,
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
                  color: Colors.grey,
                  fontSize: 10,
                  fontStyle: FontStyle.italic),
            ),
            onTap: () => Navigator.of(context)
                .pushNamed(PropertyPage.route + '/' + property.sId)));
  }
}
