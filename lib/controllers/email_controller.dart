import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import 'package:site_lage/components/connection.dart';
part 'email_controller.g.dart';

class EmailController = _EmailControllerBase with _$EmailController;

abstract class _EmailControllerBase with Store {
  @observable
  String name = "";

  @observable
  String subject = "";

  @observable
  String text = "";

  @action
  void setName(String val) {
    name = val;
  }

  @action
  void setSubject(String val) {
    subject = val;
  }

  @action
  void setText(String val) {
    text = val;
  }

  @action
  Future submit() async {
    var response = await http
        .post(Constants.url + "email/sendEmail",
            headers: {
              "Content-Type": "application/json",
            },
            body: json.encode(
              {"userMail": name, "subject": subject, "text": text},
            ))
        .timeout((Constants.timeout),
            onTimeout: () => http.Response(
                json.encode({'error': "Servidor demorou para responder"}),
                400));
    if (response.statusCode == 200)
      return true;
    else
      return false;
  }

  List<ReactionDisposer> _disposers;

  void setupValidations() {
    _disposers = [
      reaction((_) => name, validateName),
      reaction((_) => subject, validateSubject),
      reaction((_) => text, validateText)
    ];
  }

  /*  AÇÕES DE VALIDAÇÃO */

  final FormErrorState error = FormErrorState();

  @action
  void validateName(String value) {
    error.name = value == null || value.isEmpty
        ? "Digite seu email"
        : !value.contains("@") && !value.contains(".com")
            ? "Digite um email válido"
            : null;
  }

  @action
  void validateSubject(String value) {
    error.subject = value == null || value.isEmpty ? "Digite um assunto" : null;
  }

  @action
  void validateText(String value) {
    error.text = value == null || value.isEmpty ? "Digite um texto" : null;
  }

  /*  Verifica a ausencia de erros */
  @computed
  bool get canContinue => !error.hasErrors;

  void dispose() {
    for (final d in _disposers) d();
  }

  Future<bool> validateAll() async {
    validateName(name);
    validateSubject(subject);
    validateText(text);

    return canContinue;
  }
}

class FormErrorState = _FormErrorStateBase with _$FormErrorState;

abstract class _FormErrorStateBase with Store {
  @observable
  String name;

  @observable
  String subject;

  @observable
  String text;

  @computed
  bool get hasErrors => name != null || subject != null || text != null;
}
