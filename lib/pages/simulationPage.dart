import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:site_lage/pages/simulationPage/simulationPage_desktop.dart';
import 'package:site_lage/pages/simulationPage/simulationPage_mobile.dart';
import 'package:site_lage/util/foorter/footer.dart';
import 'package:site_lage/util/navigationBar/navigationBar.dart';
import 'package:url_launcher/url_launcher.dart';

class SimulationPage extends StatelessWidget {
  static const route = '/simulation';
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
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification overScroll) {
            overScroll.disallowGlow();
            return false;
          },
          child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NavigationBar(),
                ConstrainedBox(
                  constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height * 0.85),
                  child: Container(
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
                  ),
                ),
                Footer()
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () =>
            launch("https://api.whatsapp.com/send?phone=553138222535"),
        child: Image.asset(
          "assets/images/whatsapp-24.png",
          fit: BoxFit.none,
        ),
        backgroundColor: const Color(0xff25D366),
      ),
    );
  }
}
