import 'package:flutter/material.dart';

class SimulationTitleWidget extends StatelessWidget {
  final double size;
  final double fontSize;

  const SimulationTitleWidget(
      {Key key, @required this.size, @required this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: size,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/Simulation.jpeg")),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.8),
          child: Center(
            child: Text(
              "SIMULADORES",
              style: TextStyle(
                  fontSize: fontSize,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
