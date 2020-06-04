import 'package:flutter/material.dart';

class PropertyCard extends StatelessWidget {
  final String index;

  const PropertyCard({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: 350,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(blurRadius: 10, offset: Offset(5, 5), color: Colors.grey)
          ]),
      child: Column(
        children: [Text(index)],
      ),
    );
  }
}
