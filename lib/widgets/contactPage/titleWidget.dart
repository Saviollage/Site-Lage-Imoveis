import 'package:flutter/material.dart';

class ContactTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 600,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/contact.jpg")),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.8),
          child: Center(
            child: Text(
              "Contato",
              style: TextStyle(
                  fontSize: 70,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}