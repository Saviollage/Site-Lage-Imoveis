import 'dart:convert';
import 'package:mobx/mobx.dart';
import 'package:site_lage/components/connection.dart';
import 'package:site_lage/models/property.dart';
import 'package:http/http.dart' as http;
part 'api_controller.g.dart';

class ApiController = _ApiControllerBase with _$ApiController;

abstract class _ApiControllerBase with Store {
  @observable
  ObservableList properties;

  @observable
  bool loading = false;

  @observable
  Property property;

  @computed
  get propertiesList => properties.toList();

  @action
  Future getAllproperties() async {
    if (properties != null) return properties;
    try {
      final response = await http
          .get(Constants.url + 'properties')
          .timeout(Constants.timeout, onTimeout: () => throw ("TimeoutError"));
      if (response.statusCode == 200) {
        var data = json.decode(utf8.decode(response.bodyBytes));
        properties = new List.generate(
                data.length, (item) => Property.fromJson(data[item]))
            .asObservable();
        return properties;
      }
      return null;
    } catch (error, stacktrace) {
      print("Erro ao carregar lista" + stacktrace.toString());
      return null;
    }
  }

  @action
  Future getpropertyDetail(String id) async {
    try {
      loading = true;
      final response = await http
          .get(Constants.url + 'properties/' + id)
          .timeout(Constants.timeout, onTimeout: () => throw ("TimeoutError"));
      loading = false;
      if (response.statusCode == 200) {
        var data = json.decode(utf8.decode(response.bodyBytes));

        property = Property.fromJson(data);
        return property;
      }
      return null;
    } catch (error, stacktrace) {
      loading = false;
      print("Erro ao carregar propriedade" + stacktrace.toString());
      return null;
    }
  }

  @action
  void resetProperty() {
    loading = false;
    property = null;
  }
}
