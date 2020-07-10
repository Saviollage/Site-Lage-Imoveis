import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:site_lage/components/colors.dart';
import 'package:site_lage/controllers/email_controller.dart';

class SubmitButton extends StatelessWidget {
  final emailController = GetIt.I.get<EmailController>();

  final double percentSize;

  SubmitButton({Key key, @required this.percentSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * percentSize,
        padding: EdgeInsets.only(left: 10),
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: LageColors.yellow, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            "ENVIAR",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
      onTap: () => emailController.validateAll().then((value) {
        if (value) {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (_) => AlertDialog(
              content: ListTile(
                leading: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(LageColors.yellow),
                ),
                title: Text("Aguarde"),
                subtitle: Text('Enviando email'),
              ),
            ),
          );
          emailController.submit().then((value) {
            Navigator.pop(context);
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (_) {
                  Future.delayed(Duration(seconds: 3), () {
                    Navigator.pop(context);
                  });

                  return AlertDialog(
                    content: ListTile(
                        leading: Icon(
                          value ? Icons.check_circle : Icons.cancel,
                          color: LageColors.yellow,
                          size: 40,
                        ),
                        title: value ? Text("Sucesso!") : Text("Ops!"),
                        subtitle: value
                            ? Text('Email enviado com sucesso!')
                            : Text("ocorreu um erro, tente novamente")),
                  );
                });
          });
        }
      }),
    );
  }
}
