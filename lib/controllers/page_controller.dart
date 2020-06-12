import 'package:mobx/mobx.dart';
part 'page_controller.g.dart';

class CurrentPageController = _CurrentPageControllerBase
    with _$CurrentPageController;

abstract class _CurrentPageControllerBase with Store {
  @observable
  int pageIndex = 4;

  /*
   * Páginas
   * 0 -> Home
   * 1 -> AboutUs
   * 2 -> Contact
   * 3 -> Simulation
   * 4 -> All Properties
   */

  @action
  void changePage(int index) {
    pageIndex = index;
  }
}
