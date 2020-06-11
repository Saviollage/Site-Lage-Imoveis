import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:site_lage/pages/simulationPage/simulationPage_desktop.dart';
import 'package:site_lage/pages/simulationPage/simulationPage_mobile.dart';

class SimulationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: ScreenTypeLayout(
        desktop: SimulationPageDesktop(),
        tablet: SimulationPageDesktop(),
        mobile: SimulationPageMobile(),
      ),
    );
  }
}
