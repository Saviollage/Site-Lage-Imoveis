import 'package:flutter/material.dart';
import 'package:site_lage/widgets/aboutusPage/titleWidget.dart';

class AboutUsPageDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        AboutUsTitleWidget(
          size: 600,
          textSize: 70,
        ),
        SizedBox(height: 50,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: Text(
            "LAGE IMÓVEIS entrou no ramo de imóveis há mais de 10 anos, com o intuito de apresentar ao mercado imobiliário um serviço diferenciado, visando atingir seus objetivos promovendo campanhas de marketing com um maior equilíbrio e sempre apresentando o seu maior diferencial, o atendimento.\nHoje dispomos de diversas soluções e serviços, sempre se preocupando em oferecer toda uma estrutura com atendimento de qualidade, além de conforto e segurança para que a transação com o cliente seja protegido com garantias de sucesso.",
            style: TextStyle(fontSize: 20),
          ),
        ),
        ListTile(
          enabled: false,
          contentPadding: EdgeInsets.symmetric(horizontal: 40),
          title: Text(
            "Nossa missão",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Text(
            "Suprir as necessidades do segmento de imóveis, superando as expectativas de nossos clientes e empresas através de uma assessoria completa, com profissionais gabaritados, prestando serviços da mais alta qualidade, proporcionando soluções a preços justos e competitivos.",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ]),
    );
  }
}
