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
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 40),
          ),
          subtitle: Text(
            "CRECI MG 1915",
            style: TextStyle(
                color: LageColors.yellow,
                fontWeight: FontWeight.bold,
                fontSize: 35),
          ),
        ),
        
        Container(
          height: 1,
          padding: EdgeInsets.symmetric(horizontal: 20),
          margin: EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width * 0.4,
          color: Colors.grey,
        ),
        ListTile(
          enabled: false,
          title: Text(
            "Alguma dúvida? Nos envie um email!",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
        NameBar(),
        SizedBox(
          height: 10,
        ),
        SubjectBar(),
        SizedBox(
          height: 10,
        ),
        TextBar(),
        SizedBox(
          height: 10,
        ),
        SubmitButton()
      ],
    ));
  }
}
