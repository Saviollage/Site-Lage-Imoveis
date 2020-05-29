import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {

  final String title;
  

  const NavigationBarItem({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title
    );
  }
}