import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:site_lage/components/colors.dart';
import 'package:site_lage/controllers/email_controller.dart';
import 'package:site_lage/models/property.dart';
import 'package:site_lage/widgets/propertyPage/propertyDetails.dart';
import 'package:site_lage/widgets/propertyPage/propertyPhotos.dart';
import 'package:url_launcher/url_launcher.dart';

class PropertyPageMobile extends StatelessWidget {
  final Property property;

  PropertyPageMobile({Key key, this.property}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String filtered = "Olá, estou interessado(a) em " +
        property.title +
        " situado(a) no endereço " +
        property.address;
    return ConstrainedBox(
        constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height * 0.85),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              PropertyDetails(
                property: property,
                percentSize: 1,
              ),
              SizedBox(
                height: 30,
              ),
              PropertyPhotos(
                images: property.images,
                percentSize: 1,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: Colors.grey,
                margin: EdgeInsets.symmetric(vertical: 15),
              ),
              InkWell(
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 10),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: LageColors.yellow,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "EMAIL",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
                onTap: () => launch(
                    "mailto:lageimoveis@uol.com.br?cc=eustaquio.lage@uol.com.br&subject=INTERESSE%20POR%20IM%C3%93VEL&body=" +
                        filtered.replaceAll(" ", "%20")),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 10),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: const Color(0xff25D366),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "WHATSAPP",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
                onTap: () => launch(
                    "https://api.whatsapp.com/send?phone=553138222535&text=" +
                        filtered.replaceAll(" ", "%20")),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ));
  }
}
