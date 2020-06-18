import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:site_lage/pages/simulationPage/simulationPage_desktop.dart';
import 'package:site_lage/pages/simulationPage/simulationPage_mobile.dart';

class SimulationPage extends StatelessWidget {
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
      alignment: Alignment.topCenter,
      child: ScreenTypeLayout(
        desktop: SimulationPageDesktop(
          links: links,
          options: options,
        ),
        tablet: SimulationPageDesktop(
          links: links,
          options: options,
        ),
        mobile: SimulationPageMobile(
          links: links,
          options: options,
        ),
      ),
    );
  }
}
