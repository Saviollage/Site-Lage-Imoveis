import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:site_lage/components/colors.dart';
import 'package:site_lage/controllers/email_controller.dart';

class TextBar extends StatelessWidget {
  final emailController = GetIt.I.get<EmailController>();

  final double percentSize;

  TextBar({Key key, @required this.percentSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 140,
        width: MediaQuery.of(context).size.width * percentSize,
        padding: EdgeInsets.only(left: 10),
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            // boxShadow: [
            //   BoxShadow(
            //     blurRadius: 10,
            //     color: Colors.grey,
            //     offset: Offset(5,5)
            //   )
            // ],
            borderRadius: BorderRadius.circular(10)),
        child: Observer(
          builder: (_) => TextFormField(
            cursorColor: LageColors.yellow,
            style: TextStyle(fontSize: 16),
            decoration: InputDecoration(
                border: InputBorder.none,
                hoverColor: LageColors.yellow,
                fillColor: LageColors.yellow,
                hintText: 'Texto',
                hintStyle: TextStyle(fontSize: 16),
                errorText: emailController.error.text),
            maxLines: 4,
            maxLengthEnforced: true,
            maxLength: 200,
            onChanged: emailController.setText,
          ),
        ));
  }
}
