import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:site_lage/components/connection.dart';
import 'package:site_lage/models/property.dart';
import 'package:http/http.dart' as http;

part 'api_controller.g.dart';

class ApiController = _ApiControllerBase with _$ApiController;

abstract class _ApiControllerBase with Store {
  @observable
  ObservableList<Property> properties = new ObservableList<Property>();

  @action
  Future<List<Property>> getAllproperties() async {
    try {
      final response = await http
          .get(Constants.url + 'properties')
          .timeout(Constants.timeout, onTimeout: () => throw ("TimeoutError"));
      if (response.statusCode == 200) {
        var data = json.decode(utf8.decode(response.bodyBytes));
        properties = new List.generate(
                data.length, (item) => Property.fromJson(data[item]))
            .asObservable();
        return properties.toList();
      }
      return null;
    } catch (error, stacktrace) {
      print("Erro ao carregar lista" + stacktrace.toString());
      return null;
    }
  }
}
