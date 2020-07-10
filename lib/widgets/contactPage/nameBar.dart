import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:site_lage/components/colors.dart';
import 'package:site_lage/controllers/email_controller.dart';

class NameBar extends StatelessWidget {
  final emailController = GetIt.I.get<EmailController>();

  final double percentSize;

  NameBar({Key key, @required this.percentSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * percentSize,
      padding: EdgeInsets.only(left: 10),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10)),
      child: Observer(
        builder: (_) => TextFormField(
          cursorColor: LageColors.yellow,
          style: TextStyle(fontSize: 16),
          decoration: InputDecoration(
              border: InputBorder.none,
              hoverColor: LageColors.yellow,
              fillColor: LageColors.yellow,
              hintText: 'Digite seu email',
              hintStyle: TextStyle(fontSize: 16),
              errorText: emailController.error.name),
          onChanged: emailController.setName,
        ),
      ),
    );
  }
}
