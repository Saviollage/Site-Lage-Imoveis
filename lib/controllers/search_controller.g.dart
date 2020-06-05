// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchController on _SearchControllerBase, Store {
  final _$textAtom = Atom(name: '_SearchControllerBase.text');

  @override
  String get text {
    _$textAtom.reportRead();
    return super.text;
  }

  @override
  set text(String value) {
    _$textAtom.reportWrite(value, super.text, () {
      super.text = value;
    });
  }

  final _$propertyTypeAtom = Atom(name: '_SearchControllerBase.propertyType');

  @override
  String get propertyType {
    _$propertyTypeAtom.reportRead();
    return super.propertyType;
  }

  @override
  set propertyType(String value) {
    _$propertyTypeAtom.reportWrite(value, super.propertyType, () {
      super.propertyType = value;
    });
  }

  final _$propertyTypesAtom = Atom(name: '_SearchControllerBase.propertyTypes');

  @override
  ObservableList<dynamic> get propertyTypes {
    _$propertyTypesAtom.reportRead();
    return super.propertyTypes;
  }

  @override
  set propertyTypes(ObservableList<dynamic> value) {
    _$propertyTypesAtom.reportWrite(value, super.propertyTypes, () {
      super.propertyTypes = value;
    });
  }

  final _$methodAtom = Atom(name: '_SearchControllerBase.method');

  @override
  String get method {
    _$methodAtom.reportRead();
    return super.method;
  }

  @override
  set method(String value) {
    _$methodAtom.reportWrite(value, super.method, () {
      super.method = value;
    });
  }

  final _$methodTypesAtom = Atom(name: '_SearchControllerBase.methodTypes');

  @override
  ObservableList<dynamic> get methodTypes {
    _$methodTypesAtom.reportRead();
    return super.methodTypes;
  }

  @override
  set methodTypes(ObservableList<dynamic> value) {
    _$methodTypesAtom.reportWrite(value, super.methodTypes, () {
      super.methodTypes = value;
    });
  }

  final _$_SearchControllerBaseActionController =
      ActionController(name: '_SearchControllerBase');

  @override
  void setText(String newText) {
    final _$actionInfo = _$_SearchControllerBaseActionController.startAction(
        name: '_SearchControllerBase.setText');
    try {
      return super.setText(newText);
    } finally {
      _$_SearchControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setpropertyType(String newPropertyType) {
    final _$actionInfo = _$_SearchControllerBaseActionController.startAction(
        name: '_SearchControllerBase.setpropertyType');
    try {
      return super.setpropertyType(newPropertyType);
    } finally {
      _$_SearchControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setMethod(String newMethod) {
    final _$actionInfo = _$_SearchControllerBaseActionController.startAction(
        name: '_SearchControllerBase.setMethod');
    try {
      return super.setMethod(newMethod);
    } finally {
      _$_SearchControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void showData() {
    final _$actionInfo = _$_SearchControllerBaseActionController.startAction(
        name: '_SearchControllerBase.showData');
    try {
      return super.showData();
    } finally {
      _$_SearchControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
text: ${text},
propertyType: ${propertyType},
propertyTypes: ${propertyTypes},
method: ${method},
methodTypes: ${methodTypes}
    ''';
  }
}
