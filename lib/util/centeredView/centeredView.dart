import 'package:flutter/material.dart';

class CenteredView extends StatelessWidget {
  final Widget child;

  const CenteredView({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1920),
        child: child,
      ),
    );
  }
}
