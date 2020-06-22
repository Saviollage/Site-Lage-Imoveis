import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

class PropertiesListLoading extends StatelessWidget {
  final double size;

  const PropertiesListLoading({
    Key key,
    @required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size,
        child: ListView.builder(
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) => SkeletonAnimation(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    width: size == 300 ? 350 : 200,
                    height: size,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[300]),
                  ),
                )));
  }
}
