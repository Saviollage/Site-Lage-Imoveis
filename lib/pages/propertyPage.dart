import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:site_lage/components/colors.dart';
import 'package:site_lage/pages/propertyPage/propertyPage_desktop.dart';
import 'package:site_lage/pages/propertyPage/propertyPage_mobile.dart';
import 'package:site_lage/util/foorter/footer.dart';
import 'package:site_lage/util/navigationBar/navigationBar.dart';
import 'package:site_lage/controllers/api_controller.dart';
import 'package:site_lage/widgets/propertiesPage/notFoundWidget.dart';

class PropertyPage extends StatefulWidget {
  static const route = '/property';
  final String id;
  PropertyPage({Key key, this.id}) : super(key: key);

  @override
  PropertyPageState createState() => PropertyPageState(id);
}

class PropertyPageState extends State<PropertyPage> {
  final apiController = GetIt.I.get<ApiController>();
  final observer = GetIt.I.get<FirebaseAnalyticsObserver>();
  final String id;

  PropertyPageState(this.id);

  @override
  void initState() {
    observer.analytics.setCurrentScreen(
      screenName: '/property/' + id,
    );

    apiController.getpropertyDetail(id);
    super.initState();
  }

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
              children: [
                NavigationBar(),
                ConstrainedBox(
                  constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height * 0.85),
                  child: FutureBuilder(
                    future: apiController.getpropertyDetail(widget.id),
                    builder: (context, snapshot) => snapshot.connectionState ==
                            ConnectionState.waiting
                        ? Container(
                            color: Colors.transparent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircularProgressIndicator(
                                  valueColor:
                                      AlwaysStoppedAnimation(LageColors.yellow),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text('Aguarde, por favor')
                              ],
                            ))
                        : !snapshot.hasData
                            ? Container(
                                color: Colors.transparent,
                                child: NotFoundWidget(
                                    size: MediaQuery.of(context).size.width *
                                        0.4))
                            : Container(
                                alignment: Alignment.topCenter,
                                child: ScreenTypeLayout(
                                  desktop: PropertyPageDesktop(
                                    property: snapshot.data,
                                  ),
                                  tablet: PropertyPageDesktop(
                                    property: snapshot.data,
                                  ),
                                  mobile: PropertyPageMobile(
                                    property: snapshot.data,
                                  ),
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
    );
  }
}
