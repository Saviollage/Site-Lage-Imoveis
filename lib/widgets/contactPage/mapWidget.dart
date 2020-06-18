import 'package:flutter/material.dart';
import 'package:site_lage/widgets/contactPage/getMap.dart';

class MapWidget extends StatelessWidget {
  final double size;

  const MapWidget({Key key, @required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * size,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(blurRadius: 10, offset: Offset(5, 5), color: Colors.grey)
      ], borderRadius: BorderRadius.circular(20), color: Colors.white),
       child: MapW(),
    );
  }
}
