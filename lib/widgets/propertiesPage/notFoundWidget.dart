import 'package:flutter/material.dart';
import 'package:site_lage/components/colors.dart';

class NotFoundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("images/House.png"))
            ),
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
                  fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
