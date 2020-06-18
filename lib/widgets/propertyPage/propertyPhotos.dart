import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:site_lage/components/colors.dart';
import 'package:site_lage/controllers/property_controller.dart';

class PropertyPhotos extends StatelessWidget {
  final propertyController = PropertyController();
  final List images;
  final double percentSize;

  PropertyPhotos({Key key, @required this.images, @required this.percentSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * percentSize,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Observer(
            builder: (_) => Container(
              height: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: NetworkImage(
                          images.elementAt(propertyController.currentIndex)))),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ListTile(
            enabled: false,
            subtitle: Text(
              "Fotos",
              style: TextStyle(
                  color: LageColors.yellow,
                  fontWeight: FontWeight.bold,
                  fontSize: 35),
            ),
          ),
          GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, childAspectRatio: 400 / 300),
              itemCount: images.length,
              itemBuilder: (context, index) => InkWell(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(images.elementAt(index)))),
                    ),
                    onTap: () => propertyController.setIndex(index),
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                  ))
        ],
      ),
    );
  }
}
