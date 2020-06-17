import 'package:mobx/mobx.dart';
part 'property_controller.g.dart';

class PropertyController = _PropertyControllerBase with _$PropertyController;

abstract class _PropertyControllerBase with Store {
  @observable
  int currentIndex = 0;

  @action
  void setIndex(int value) {
    currentIndex = value;
  }
}
