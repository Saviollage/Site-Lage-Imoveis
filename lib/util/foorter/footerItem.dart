import 'package:flutter/material.dart';

class FooterItem extends StatelessWidget {
  final String title;
  final String subtitle;

  const FooterItem({Key key, this.title, this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
        ),
        Text(
          subtitle,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
        )
      ],
    );
  }
}
