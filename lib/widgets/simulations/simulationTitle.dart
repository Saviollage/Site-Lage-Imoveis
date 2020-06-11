import 'package:flutter/material.dart';

class SimulationTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 600,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/Simulation.jpeg")),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.5),
          child: Center(
            child: Text(
              "SIMULADORES",
              style: TextStyle(
                  fontSize: 70,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
