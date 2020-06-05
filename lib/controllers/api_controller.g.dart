// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ApiController on _ApiControllerBase, Store {
  final _$propertiesAtom = Atom(name: '_ApiControllerBase.properties');

  @override
  ObservableList<Property> get properties {
    _$propertiesAtom.reportRead();
    return super.properties;
  }

  @override
  set properties(ObservableList<Property> value) {
    _$propertiesAtom.reportWrite(value, super.properties, () {
      super.properties = value;
    });
  }

  final _$getAllpropertiesAsyncAction =
      AsyncAction('_ApiControllerBase.getAllproperties');

  @override
  Future<void> getAllproperties() {
    return _$getAllpropertiesAsyncAction.run(() => super.getAllproperties());
  }

  @override
  String toString() {
    return '''
properties: ${properties}
    ''';
  }
}
