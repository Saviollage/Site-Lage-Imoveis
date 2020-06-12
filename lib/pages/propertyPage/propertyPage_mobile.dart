import 'package:flutter/material.dart';
import 'package:site_lage/models/property.dart';
import 'package:site_lage/util/foorter/footer.dart';
import 'package:site_lage/util/navigationBar/navigationBar.dart';
import 'package:site_lage/widgets/propertyPage/propertyDetails.dart';
import 'package:url_launcher/url_launcher.dart';

class PropertyPageMobile extends StatelessWidget {
  final Property property;

  const PropertyPageMobile({Key key, this.property}) : super(key: key);

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
              children: [NavigationBar(), PropertyDetails(), Footer()],
            ),
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () => launch(
            "https://api.whatsapp.com/send?phone=553138222535&text=Ol%C3%A1%2C%20gostaria%20de%20saber%20sobre%20o%20imovel%20${property.title}%20${property.address}"),
        child: Image.asset(
          "images/whatsapp-24.png",
          fit: BoxFit.none,
        ),
        backgroundColor: const Color(0xff25D366),
      ),
    );
  }
}
