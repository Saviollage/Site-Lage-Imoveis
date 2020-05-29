import 'package:flutter/material.dart';
import 'package:site_lage/util/foorter/footerInfo.dart';
import 'package:site_lage/util/foorter/footerLogo.dart';

class FooterDesktopAndTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // FooterItem(
          //   title: "Lage Imóveis",
          //   subtitle: "Filiada Rede Ipatinga Imóveis",
          // ),
          FooterLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 2,
                color: Colors.black,
                margin: const EdgeInsets.only(right: 10),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FooterInfo(
                    icon: Icons.alternate_email,
                    title: "contato@lageimoveis.com.br",
                  ),
                  FooterInfo(
                    icon: Icons.phone,
                    title: "(31) 3822-2535",
                  ),
                  FooterInfo(
                    icon: Icons.business,
                    title:
                        "Rua Diamantina, 272 - Loja 02 Bairro Centro - Ipatinga/MG",
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
