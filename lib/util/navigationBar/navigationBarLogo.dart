import 'package:flutter/material.dart';

class NavigationBarLogo extends StatelessWidget {
  final Function onPressed;

  const NavigationBarLogo({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: InkWell(
        onTap: onPressed,
        child: Image.asset('assets/logo/Lage.png'),
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
    );
  }
}
