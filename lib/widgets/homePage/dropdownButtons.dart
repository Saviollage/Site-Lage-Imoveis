import 'package:flutter/material.dart';

class DropdownButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: MediaQuery.of(context).size.width * 0.6,
        padding: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              child: DropdownButton(items: [
                DropdownMenuItem(child: Text('1')),
                DropdownMenuItem(child: Text('2'))
              ], onChanged: null),
              flex: 4,
            )
          ],
        ));
  }
}
