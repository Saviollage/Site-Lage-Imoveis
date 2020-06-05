import 'package:mobx/mobx.dart';
part 'search_controller.g.dart';

class SearchController = _SearchControllerBase with _$SearchController;

abstract class _SearchControllerBase with Store {
  @observable
  String text = "";

  @observable
  String propertyType = "Todos";

  @observable
  ObservableList propertyTypes = [
    "Todos",
    "Casa",
    "Apartamento",
    "Sítio",
    "Lote",
    "Chácara",
    "Outros"
  ].asObservable();

  @observable
  String method = "Aluguel e Venda";

  @observable
  ObservableList methodTypes =
      ["Aluguel e Venda", "Aluguel", "Venda"].asObservable();

  @action
  void setText(String newText) {
    text = newText;
  }

  @action
  void setpropertyType(String newPropertyType) {
    propertyType = newPropertyType;
  }

  @action
  void setMethod(String newMethod) {
    method = newMethod;
  }

  @action
  void showData() {
    print(text + "\t" + propertyType + "\t" + method);
  }
}
