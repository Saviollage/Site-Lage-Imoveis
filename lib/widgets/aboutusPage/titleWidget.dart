import 'package:flutter/material.dart';

class AboutUsTitleWidget extends StatelessWidget {
  final double size;
  final double textSize;

  const AboutUsTitleWidget({Key key, this.size, this.textSize}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: size,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/AboutUs.jpg")),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.8),
          child: Center(
            child: Text(
              "Sobre nós",
              style: TextStyle(
                  fontSize: textSize,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
