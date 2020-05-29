import 'package:flutter/material.dart';

class FooterInfo extends StatelessWidget {
  final String title;
  final IconData icon;
  final double iconSize;
  final double textSize;

  const FooterInfo(
      {Key key, this.title, this.icon, this.iconSize, this.textSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          width: 5,
        ),
        Flexible(
            child: Text(
          title,
          style: TextStyle(fontSize: textSize),
        ))
      ],
    );
  }
}
