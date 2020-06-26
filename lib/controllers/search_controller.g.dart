// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchController on _SearchControllerBase, Store {
  Computed<dynamic> _$getPropertyTypesComputed;

  @override
  dynamic get getPropertyTypes => (_$getPropertyTypesComputed ??=
          Computed<dynamic>(() => super.getPropertyTypes))
      .value;
  Computed<dynamic> _$filteredListComputed;

  @override
  dynamic get filteredList =>
      (_$filteredListComputed ??= Computed<dynamic>(() => super.filteredList))
          .value;

  final _$textAtom = Atom(name: '_SearchControllerBase.text');

  @override
  String get text {
    _$textAtom.context.enforceReadPolicy(_$textAtom);
    _$textAtom.reportObserved();
    return super.text;
  }

  @override
  set text(String value) {
    _$textAtom.context.conditionallyRunInAction(() {
      super.text = value;
      _$textAtom.reportChanged();
    }, _$textAtom, name: '${_$textAtom.name}_set');
  }

  final _$propertyTypeAtom = Atom(name: '_SearchControllerBase.propertyType');

  @override
  String get propertyType {
    _$propertyTypeAtom.context.enforceReadPolicy(_$propertyTypeAtom);
    _$propertyTypeAtom.reportObserved();
    return super.propertyType;
  }

  @override
  set propertyType(String value) {
    _$propertyTypeAtom.context.conditionallyRunInAction(() {
      super.propertyType = value;
      _$propertyTypeAtom.reportChanged();
    }, _$propertyTypeAtom, name: '${_$propertyTypeAtom.name}_set');
  }

  final _$propertyTypesAtom = Atom(name: '_SearchControllerBase.propertyTypes');

  @override
  ObservableList get propertyTypes {
    _$propertyTypesAtom.context.enforceReadPolicy(_$propertyTypesAtom);
    _$propertyTypesAtom.reportObserved();
    return super.propertyTypes;
  }

  @override
  set propertyTypes(ObservableList value) {
    _$propertyTypesAtom.context.conditionallyRunInAction(() {
      super.propertyTypes = value;
      _$propertyTypesAtom.reportChanged();
    }, _$propertyTypesAtom, name: '${_$propertyTypesAtom.name}_set');
  }

  final _$methodAtom = Atom(name: '_SearchControllerBase.method');

  @override
  String get method {
    _$methodAtom.context.enforceReadPolicy(_$methodAtom);
    _$methodAtom.reportObserved();
    return super.method;
  }

  @override
  set method(String value) {
    _$methodAtom.context.conditionallyRunInAction(() {
      super.method = value;
      _$methodAtom.reportChanged();
    }, _$methodAtom, name: '${_$methodAtom.name}_set');
  }

  final _$methodTypesAtom = Atom(name: '_SearchControllerBase.methodTypes');

  @override
  ObservableList get methodTypes {
    _$methodTypesAtom.context.enforceReadPolicy(_$methodTypesAtom);
    _$methodTypesAtom.reportObserved();
    return super.methodTypes;
  }

  @override
  set methodTypes(ObservableList value) {
    _$methodTypesAtom.context.conditionallyRunInAction(() {
      super.methodTypes = value;
      _$methodTypesAtom.reportChanged();
    }, _$methodTypesAtom, name: '${_$methodTypesAtom.name}_set');
  }

  final _$propertiesAtom = Atom(name: '_SearchControllerBase.properties');

  @override
  ObservableList<Property> get properties {
    _$propertiesAtom.context.enforceReadPolicy(_$propertiesAtom);
    _$propertiesAtom.reportObserved();
    return super.properties;
  }

  @override
  set properties(ObservableList<Property> value) {
    _$propertiesAtom.context.conditionallyRunInAction(() {
      super.properties = value;
      _$propertiesAtom.reportChanged();
    }, _$propertiesAtom, name: '${_$propertiesAtom.name}_set');
  }

  final _$_SearchControllerBaseActionController =
      ActionController(name: '_SearchControllerBase');

  @override
  void getProperties(dynamic l) {
    final _$actionInfo = _$_SearchControllerBaseActionController.startAction();
    try {
      return super.getProperties(l);
    } finally {
      _$_SearchControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setText(String newText) {
    final _$actionInfo = _$_SearchControllerBaseActionController.startAction();
    try {
      return super.setText(newText);
    } finally {
      _$_SearchControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setpropertyType(String newPropertyType) {
    final _$actionInfo = _$_SearchControllerBaseActionController.startAction();
    try {
      return super.setpropertyType(newPropertyType);
    } finally {
      _$_SearchControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setMethod(String newMethod) {
    final _$actionInfo = _$_SearchControllerBaseActionController.startAction();
    try {
      return super.setMethod(newMethod);
    } finally {
      _$_SearchControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void showData() {
    final _$actionInfo = _$_SearchControllerBaseActionController.startAction();
    try {
      return super.showData();
    } finally {
      _$_SearchControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reset() {
    final _$actionInfo = _$_SearchControllerBaseActionController.startAction();
    try {
      return super.reset();
    } finally {
      _$_SearchControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
