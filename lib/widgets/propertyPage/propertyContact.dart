import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:site_lage/components/colors.dart';
import 'package:site_lage/controllers/email_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class PropertyContact extends StatelessWidget {
  final double percentSize;
  final String initText;
  final emailController = EmailController();

  PropertyContact({Key key, @required this.percentSize, this.initText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    emailController.setText(initText);
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
            Container(
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
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 70,
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
                        hintText: 'Assunto',
                        hintStyle: TextStyle(fontSize: 16),
                        errorText: emailController.error.subject),
                    maxLines: 2,
                    maxLength: 50,
                    onChanged: emailController.setSubject,
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 140,
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
                    initialValue: initText,
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
                )),
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
                    color: LageColors.yellow,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "ENVIAR",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
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
              onTap: () => launch(
                  "https://api.whatsapp.com/send?phone=553138222535&text=" +
                      initText),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ));
  }
}
