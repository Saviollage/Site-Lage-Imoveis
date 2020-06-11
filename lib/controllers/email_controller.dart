import 'package:mobx/mobx.dart';
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
  void submit() {
    print(name + "\t" + subject + "\t" + text);
  }
}
