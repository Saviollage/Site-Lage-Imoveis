import 'package:mobx/mobx.dart';
import 'package:site_lage/models/property.dart';
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
    "Área",
    "Apartamento",
    "Casa",
    "Casa Geminada",
    "Chácara",
    "Cobertura",
    "Fazenda",
    "Galpão",
    "Loja",
    "Lote",
    "Prédio",
    "Quitinete",
    "Sala",
    "Sítio",
    "Terreno"
  ].asObservable();

  @computed
  get getPropertyTypes => propertyTypes.toList();

  @observable
  String method = "Aluguel e Venda";

  @observable
  ObservableList methodTypes =
      ["Aluguel e Venda", "Aluguel", "Venda"].asObservable();

  @observable
  ObservableList<Property> properties;

  @action
  void getProperties(List<Property> l) {
    properties = new List<Property>.from(l).asObservable();
  }

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

  @action
  void reset() {
    text = "";
    propertyType = "Todos";
    method = "Aluguel e Venda";
  }

  String normalize(String currentString) {
    String possible = "áàãâéêíóôõúüñçÁÀÃÂÉÊÍÓÔÕÚÜÑÇ";
    String result = "aaaaeeiooouuncAAAAEEIOOOUUNC";

    String newValue = "";
    for (int i = 0; i < currentString.length; i++) {
      if (possible.contains(currentString[i])) {
        newValue += result[possible.indexOf(currentString[i])];
      } else {
        newValue += currentString[i];
      }
    }
    return newValue;
  }

  @computed
  get filteredList {
    if (text.isEmpty) {
      if (propertyType == "Todos") {
        if (method == "Aluguel e Venda")
          return properties;
        else if (method == "Aluguel")
          return properties.where((element) => element.forRent);
        else
          return properties.where((element) => element.forSale);
      } else {
        if (method == "Aluguel e Venda")
          return properties.where((element) => element.type == propertyType);
        else if (method == "Aluguel")
          return properties.where(
              (element) => element.type == propertyType && element.forRent);
        else
          return properties.where(
              (element) => element.type == propertyType && element.forSale);
      }
    } else {
      if (propertyType == "Todos") {
        if (method == "Aluguel e Venda")
          return properties.where((element) => normalize(element.address)
              .toLowerCase()
              .contains(text.toLowerCase()));
        else if (method == "Aluguel")
          return properties.where((element) =>
              normalize(element.address)
                  .toLowerCase()
                  .contains(text.toLowerCase()) &&
              element.forRent);
        else
          return properties.where((element) =>
              normalize(element.address)
                  .toLowerCase()
                  .contains(text.toLowerCase()) &&
              element.forSale);
      } else {
        if (method == "Aluguel e Venda")
          return properties.where((element) =>
              normalize(element.address)
                  .toLowerCase()
                  .contains(text.toLowerCase()) &&
              element.type == propertyType);
        else if (method == "Aluguel")
          return properties.where((element) =>
              normalize(element.address)
                  .toLowerCase()
                  .contains(text.toLowerCase()) &&
              element.type == propertyType &&
              element.forRent);
        else
          return properties.where((element) =>
              normalize(element.address)
                  .toLowerCase()
                  .contains(text.toLowerCase()) &&
              element.type == propertyType &&
              element.forSale);
      }
    }
  }
}
