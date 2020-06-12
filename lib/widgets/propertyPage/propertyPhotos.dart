import 'package:flutter/material.dart';
import 'package:site_lage/components/colors.dart';

class PropertyPhotos extends StatelessWidget {
  final List images;

  const PropertyPhotos({Key key, this.images}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
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
              itemBuilder: (context, index) => Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(images.elementAt(index)))),
                  ))
        ],
      ),
    );
  }
}
