import 'package:flutter/material.dart';

class FooterLogo extends StatelessWidget {

  final double size;

  const FooterLogo({Key key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      child: Image.asset('assets/logo/LageTransparente.png'),
    );
  }
}
