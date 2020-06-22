// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PropertyController on _PropertyControllerBase, Store {
  final _$currentIndexAtom = Atom(name: '_PropertyControllerBase.currentIndex');

  @override
  int get currentIndex {
    _$currentIndexAtom.context.enforceReadPolicy(_$currentIndexAtom);
    _$currentIndexAtom.reportObserved();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.context.conditionallyRunInAction(() {
      super.currentIndex = value;
      _$currentIndexAtom.reportChanged();
    }, _$currentIndexAtom, name: '${_$currentIndexAtom.name}_set');
  }

  final _$_PropertyControllerBaseActionController =
      ActionController(name: '_PropertyControllerBase');

  @override
  void setIndex(int value) {
    final _$actionInfo =
        _$_PropertyControllerBaseActionController.startAction();
    try {
      return super.setIndex(value);
    } finally {
      _$_PropertyControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
