import 'package:flutter/material.dart';
import 'package:site_lage/widgets/simulations/simulationTitle.dart';
import 'package:url_launcher/url_launcher.dart';

class SimulationPageDesktop extends StatelessWidget {
  final List options = ["BB", "Caixa", "Santander", "Bradesco", "Itau"];
  final List links = [
    "https://www42.bb.com.br/portalbb/imobiliario/creditoimobiliario/simular,802,2250,2250.bbx",
    "http://www8.caixa.gov.br/siopiinternet-web/simulaOperacaoInternet.do?method=inicializarCasoUso",
    "https://www.santander.com.br/portal/wps/script/templates/GCMRequest.do?page=5516",
    "https://banco.bradesco/html/classic/produtos-servicos/emprestimo-e-financiamento/encontre-seu-credito/simuladores-imoveis.shtm#box1-comprar",
    "https://www.itau.com.br/creditos-financiamentos/imoveis/simulador/"
  ];

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
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: GridView.builder(
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
                                    "Images/" + options[index] + ".jpg"),
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
