import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:photo_view/photo_view.dart';
import 'package:site_lage/components/colors.dart';

class PropertyPhotos extends StatelessWidget {
  final controller = SwiperController();
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
          Container(
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // image: DecorationImage(
                //   fit: BoxFit.fitHeight,
                //   image: NetworkImage(
                //     images.elementAt(propertyController.currentIndex),
                //   ),
                // ),
              ),
              child: Swiper(
                pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                        size: 5,
                        activeColor: LageColors.yellow,
                        color: Colors.grey.withOpacity(0.3))),
                control: SwiperControl(
                  color: LageColors.yellow,
                ),
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) => PhotoView(
                  backgroundDecoration:
                      BoxDecoration(color: Colors.transparent),
                  minScale: 0.6,
                  imageProvider: NetworkImage(
                    images.elementAt(index),
                  ),
                ),
              )),
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
              physics: NeverScrollableScrollPhysics(),
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
                    onTap: () => controller.move(index, animation: true),
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
