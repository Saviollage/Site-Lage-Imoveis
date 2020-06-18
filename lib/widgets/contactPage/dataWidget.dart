import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:site_lage/components/colors.dart';
import 'package:site_lage/controllers/email_controller.dart';
import 'package:site_lage/widgets/contactPage/nameBar.dart';
import 'package:site_lage/widgets/contactPage/subjectBar.dart';
import 'package:site_lage/widgets/contactPage/submitButton.dart';
import 'package:site_lage/widgets/contactPage/textBar.dart';

class DataWidget extends StatelessWidget {
  final emailController = GetIt.I.get<EmailController>();

  final double percentSize;
  final double fontSize;

  DataWidget({Key key, @required this.percentSize, @required this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          enabled: false,
          title: Text(
            "Lage Imóveis",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: fontSize),
          ),
          subtitle: Text(
            "CRECI MG 1915",
            style: TextStyle(
                color: LageColors.yellow,
                fontWeight: FontWeight.bold,
                fontSize: fontSize * 0.8),
          ),
        ),
        Container(
          height: 1,
          padding: EdgeInsets.symmetric(horizontal: 20),
          margin: EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width * percentSize,
          color: Colors.grey,
        ),
        ListTile(
          enabled: false,
          title: Text(
            "Alguma dúvida? Nos envie um email!",
            style: TextStyle(color: Colors.black, fontSize: fontSize*0.5),
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
        )
      ],
    ));
  }
}
