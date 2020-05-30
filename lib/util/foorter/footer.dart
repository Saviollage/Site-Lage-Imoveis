import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:site_lage/components/colors.dart';
import 'footerInfo.dart';
import 'footerLogo.dart';

// class Footer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
//       alignment: Alignment.topCenter,
//       color: LageColors.yellow,
//       child: ScreenTypeLayout(
//         desktop: FooterDesktopAndTablet(),
//         mobile: FooterDesktopAndTablet(),
//       ),
//     );
//   }
// }

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      double textSize =
          sizingInfo.deviceScreenType == DeviceScreenType.mobile ? 8 : 10;
      double iconSize =
          sizingInfo.deviceScreenType == DeviceScreenType.mobile ? 16 : 20;
      double imageSize =
          sizingInfo.deviceScreenType == DeviceScreenType.mobile ? 60 : 120;
      double spacerSize =
          sizingInfo.deviceScreenType == DeviceScreenType.mobile ? 25 : 50;
      double infoSize =
          sizingInfo.deviceScreenType == DeviceScreenType.mobile ? 140 : 200;
      return Container(
          padding: EdgeInsets.symmetric(horizontal: spacerSize, vertical: 20),
          alignment: Alignment.topCenter,
          color: LageColors.yellow,
          child: Container(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // FooterItem(
                //   title: "Lage Imóveis",
                //   subtitle: "Filiada Rede Ipatinga Imóveis",
                // ),
                FooterLogo(
                  size: imageSize,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 2,
                      color: Colors.black,
                      margin: const EdgeInsets.only(right: 5),
                    ),
                    Container(
                        width: infoSize,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FooterInfo(
                              icon: Icons.alternate_email,
                              title: "contato@lageimoveis.com.br",
                              textSize: textSize,
                              iconSize: iconSize,
                            ),
                            FooterInfo(
                              icon: Icons.phone,
                              title: "(31) 3822-2535",
                              textSize: textSize,
                              iconSize: iconSize,
                            ),
                            FooterInfo(
                              icon: Icons.business,
                              title:
                                  "Rua Diamantina, 272 - Loja 02 Bairro Centro - Ipatinga/MG",
                              textSize: textSize,
                              iconSize: iconSize,
                            ),
                          ],
                        ))
                  ],
                )
              ],
            ),
          ));
    });
  }
}
