import 'package:flutter/material.dart';
import 'package:site_lage/components/colors.dart';

class PropertyTitle extends StatelessWidget {

  final String title;
  final String subtitle;
  final IconData icon;

  const PropertyTitle({Key key, this.title, this.subtitle, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: ListTile(
                    enabled: false,
                    leading: Icon(
                      icon,
                      color: LageColors.yellow,
                    ),
                    title: Text(
                      title,
                      style: TextStyle(color: Colors.black),
                    ),
                    subtitle: Text(
                     subtitle,
                      style: TextStyle(
                          color: LageColors.yellow,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                );
  }
}