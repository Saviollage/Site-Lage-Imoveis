import 'package:flutter/material.dart';
import 'package:site_lage/widgets/simulations/simulationTitle.dart';

class SimulationPageDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SimulationTitleWidget(),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: Text(
            "Escolha um dos bancos abaixo para abrir seus simuladores de financiamento imobiliário.",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ]),
    );
  }
}
