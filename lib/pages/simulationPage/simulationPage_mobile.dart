import 'package:flutter/material.dart';
import 'package:site_lage/widgets/simulations/simulationTitle.dart';
import 'package:url_launcher/url_launcher.dart';

class SimulationPageMobile extends StatelessWidget {
  final List options;
  final List links;

  const SimulationPageMobile({Key key, this.options, this.links})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SimulationTitleWidget(
          size: 300,
          fontSize: 35,
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: Text(
            "Escolha um dos bancos abaixo para abrir seus simuladores de financiamento imobiliário.",
            style: TextStyle(fontSize: 15),
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: MediaQuery.of(context).size.width ~/ 200,
                    childAspectRatio: 400 / 280),
                itemCount: options.length,
                itemBuilder: (context, index) => InkWell(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/" + options[index] + ".jpg"),
                                fit: BoxFit.fill)),
                      ),
                      canRequestFocus: true,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () => launch(links[index]),
                    ))),
        SizedBox(
          height: 40,
        )
      ]),
    );
  }
}
