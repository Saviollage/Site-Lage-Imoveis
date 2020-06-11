// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EmailController on _EmailControllerBase, Store {
  final _$nameAtom = Atom(name: '_EmailControllerBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$subjectAtom = Atom(name: '_EmailControllerBase.subject');

  @override
  String get subject {
    _$subjectAtom.reportRead();
    return super.subject;
  }

  @override
  set subject(String value) {
    _$subjectAtom.reportWrite(value, super.subject, () {
      super.subject = value;
    });
  }

  final _$textAtom = Atom(name: '_EmailControllerBase.text');

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

  final _$_EmailControllerBaseActionController =
      ActionController(name: '_EmailControllerBase');

  @override
  void setName(String val) {
    final _$actionInfo = _$_EmailControllerBaseActionController.startAction(
        name: '_EmailControllerBase.setName');
    try {
      return super.setName(val);
    } finally {
      _$_EmailControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSubject(String val) {
    final _$actionInfo = _$_EmailControllerBaseActionController.startAction(
        name: '_EmailControllerBase.setSubject');
    try {
      return super.setSubject(val);
    } finally {
      _$_EmailControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setText(String val) {
    final _$actionInfo = _$_EmailControllerBaseActionController.startAction(
        name: '_EmailControllerBase.setText');
    try {
      return super.setText(val);
    } finally {
      _$_EmailControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void submit() {
    final _$actionInfo = _$_EmailControllerBaseActionController.startAction(
        name: '_EmailControllerBase.submit');
    try {
      return super.submit();
    } finally {
      _$_EmailControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
subject: ${subject},
text: ${text}
    ''';
  }
}
