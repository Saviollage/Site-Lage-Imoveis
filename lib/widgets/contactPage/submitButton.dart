import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:site_lage/components/colors.dart';
import 'package:site_lage/controllers/email_controller.dart';

class SubmitButton extends StatelessWidget {
  final emailController = GetIt.I.get<EmailController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.4,
        padding: EdgeInsets.only(left: 10),
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: LageColors.yellow,
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
            "ENVIAR",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
      onTap: () => emailController.submit(),
    );
  }
}