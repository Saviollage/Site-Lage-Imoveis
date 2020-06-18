import 'package:flutter/material.dart';
import 'package:site_lage/components/colors.dart';
import 'package:site_lage/widgets/contactPage/nameBar.dart';
import 'package:site_lage/widgets/contactPage/subjectBar.dart';
import 'package:site_lage/widgets/contactPage/submitButton.dart';
import 'package:site_lage/widgets/contactPage/textBar.dart';
import 'package:url_launcher/url_launcher.dart';

class PropertyContact extends StatelessWidget {
  final double percentSize;

  const PropertyContact({Key key, @required this.percentSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * percentSize,
        child: Column(
          children: [
            ListTile(
              enabled: false,
              subtitle: Text(
                "Contato",
                style: TextStyle(
                    color: LageColors.yellow,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            NameBar(
              percentSize: percentSize,
            ),
            SizedBox(
              height: 10,
            ),
            SubjectBar(
              percentSize: percentSize,
            ),
            SizedBox(
              height: 10,
            ),
            TextBar(
              percentSize: percentSize,
            ),
            SizedBox(
              height: 10,
            ),
            SubmitButton(
              percentSize: percentSize,
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * percentSize,
                padding: EdgeInsets.only(left: 10),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: const Color(0xff25D366),
                    // boxShadow: [
                    //   BoxShadow(
                    //     blurRadius: 10,
                    //     color: Colors.grey,
                    //     offset: Offset(5,5)
                    //   )
                    // ],
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "WHATSAPP",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              onTap: () =>
                  launch("https://api.whatsapp.com/send?phone=553138222535"),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ));
  }
}
