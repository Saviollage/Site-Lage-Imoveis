import 'package:flutter/material.dart';
import 'package:site_lage/components/colors.dart';

class NotFoundWidget extends StatelessWidget {
  final double size;

  const NotFoundWidget({Key key, @required this.size}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            height: size,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/House.png"))),
          ),
          ListTile(
            enabled: false,
            title: Text(
              "Desculpe :(",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 35),
            ),
            subtitle: Text(
              "Nenhuma propriedade encontrada",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: LageColors.yellow,
                  fontWeight: FontWeight.bold,
                  fontSize: size == 300 ? 25 : 15),
            ),
          ),
        ],
      ),
    );
  }
}
