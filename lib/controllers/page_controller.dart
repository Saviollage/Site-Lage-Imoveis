import 'package:mobx/mobx.dart';
import 'package:site_lage/models/property.dart';
part 'page_controller.g.dart';

class CurrentPageController = _CurrentPageControllerBase
    with _$CurrentPageController;

abstract class _CurrentPageControllerBase with Store {
  @observable
  int pageIndex = 0;

  /*
   * Páginas
   * 0 -> Home
   * 1 -> AboutUs
   * 2 -> Contact
   * 3 -> Simulation
   * 4 -> All Properties
   * 5 -> Property
   */

  @observable
  Property property;

  @action
  void setProperty(Property p) {
    property = p;
  }

  @action
  void changePage(int index) {
    pageIndex = index;
  }
}
