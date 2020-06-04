import 'package:mobx/mobx.dart';
part 'search_controller.g.dart';

class SearchController = _SearchControllerBase with _$SearchController;

abstract class _SearchControllerBase with Store {
  @observable
  String text = "";

  @observable
  String propertyType = "";

  @observable
  String method = "";

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
}
