// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CurrentPageController on _CurrentPageControllerBase, Store {
  final _$pageIndexAtom = Atom(name: '_CurrentPageControllerBase.pageIndex');

  @override
  int get pageIndex {
    _$pageIndexAtom.reportRead();
    return super.pageIndex;
  }

  @override
  set pageIndex(int value) {
    _$pageIndexAtom.reportWrite(value, super.pageIndex, () {
      super.pageIndex = value;
    });
  }

  final _$_CurrentPageControllerBaseActionController =
      ActionController(name: '_CurrentPageControllerBase');

  @override
  void changePage(int index) {
    final _$actionInfo = _$_CurrentPageControllerBaseActionController
        .startAction(name: '_CurrentPageControllerBase.changePage');
    try {
      return super.changePage(index);
    } finally {
      _$_CurrentPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pageIndex: ${pageIndex}
    ''';
  }
}
