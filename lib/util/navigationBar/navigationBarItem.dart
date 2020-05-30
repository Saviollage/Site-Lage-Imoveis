import 'package:flutter/material.dart';
import 'package:site_lage/components/colors.dart';

class NavigationBarItem extends StatelessWidget {
  final String title;
  final Function onPressed;
  final bool styled;

  const NavigationBarItem(
      {Key key, this.title, this.onPressed, this.styled = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: styled ? LageColors.yellow : Colors.transparent,
            borderRadius: BorderRadius.circular(5)),
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      onTap: onPressed,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
    );
  }
}
