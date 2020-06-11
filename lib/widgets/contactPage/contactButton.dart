import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;

  const ContactButton({Key key, this.icon, this.title, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 70,
        width: 250,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white.withOpacity(0.8),
                size: 30,

              ),
              SizedBox(
                width: 20,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 26, color: Colors.white),
              )
            ],
          ),
        ),
      ),
      onTap: () => print("OK"),
    );
  }
}
