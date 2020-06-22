// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ApiController on _ApiControllerBase, Store {
  Computed<dynamic> _$propertiesListComputed;

  @override
  dynamic get propertiesList => (_$propertiesListComputed ??=
          Computed<dynamic>(() => super.propertiesList))
      .value;

  final _$propertiesAtom = Atom(name: '_ApiControllerBase.properties');

  @override
  ObservableList get properties {
    _$propertiesAtom.context.enforceReadPolicy(_$propertiesAtom);
    _$propertiesAtom.reportObserved();
    return super.properties;
  }

  @override
  set properties(ObservableList value) {
    _$propertiesAtom.context.conditionallyRunInAction(() {
      super.properties = value;
      _$propertiesAtom.reportChanged();
    }, _$propertiesAtom, name: '${_$propertiesAtom.name}_set');
  }

  final _$loadingAtom = Atom(name: '_ApiControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.context.enforceReadPolicy(_$loadingAtom);
    _$loadingAtom.reportObserved();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.context.conditionallyRunInAction(() {
      super.loading = value;
      _$loadingAtom.reportChanged();
    }, _$loadingAtom, name: '${_$loadingAtom.name}_set');
  }

  final _$propertyAtom = Atom(name: '_ApiControllerBase.property');

  @override
  Property get property {
    _$propertyAtom.context.enforceReadPolicy(_$propertyAtom);
    _$propertyAtom.reportObserved();
    return super.property;
  }

  @override
  set property(Property value) {
    _$propertyAtom.context.conditionallyRunInAction(() {
      super.property = value;
      _$propertyAtom.reportChanged();
    }, _$propertyAtom, name: '${_$propertyAtom.name}_set');
  }

  final _$getAllpropertiesAsyncAction = AsyncAction('getAllproperties');

  @override
  Future getAllproperties() {
    return _$getAllpropertiesAsyncAction.run(() => super.getAllproperties());
  }

  final _$getpropertyDetailAsyncAction = AsyncAction('getpropertyDetail');

  @override
  Future getpropertyDetail(String id) {
    return _$getpropertyDetailAsyncAction
        .run(() => super.getpropertyDetail(id));
  }

  final _$_ApiControllerBaseActionController =
      ActionController(name: '_ApiControllerBase');

  @override
  void resetProperty() {
    final _$actionInfo = _$_ApiControllerBaseActionController.startAction();
    try {
      return super.resetProperty();
    } finally {
      _$_ApiControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
