import 'package:flutter/material.dart';
import 'package:site_lage/util/centeredView/centeredView.dart';
import 'package:site_lage/util/foorter/footer.dart';
import 'package:site_lage/util/navigationBar/navigationBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CenteredView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [NavigationBar(), Footer()],
        ),
      ),
    );
  }
}
