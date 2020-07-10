// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EmailController on _EmailControllerBase, Store {
  Computed<bool> _$canContinueComputed;

  @override
  bool get canContinue =>
      (_$canContinueComputed ??= Computed<bool>(() => super.canContinue)).value;

  final _$nameAtom = Atom(name: '_EmailControllerBase.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$subjectAtom = Atom(name: '_EmailControllerBase.subject');

  @override
  String get subject {
    _$subjectAtom.context.enforceReadPolicy(_$subjectAtom);
    _$subjectAtom.reportObserved();
    return super.subject;
  }

  @override
  set subject(String value) {
    _$subjectAtom.context.conditionallyRunInAction(() {
      super.subject = value;
      _$subjectAtom.reportChanged();
    }, _$subjectAtom, name: '${_$subjectAtom.name}_set');
  }

  final _$textAtom = Atom(name: '_EmailControllerBase.text');

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

  final _$submitAsyncAction = AsyncAction('submit');

  @override
  Future submit() {
    return _$submitAsyncAction.run(() => super.submit());
  }

  final _$_EmailControllerBaseActionController =
      ActionController(name: '_EmailControllerBase');

  @override
  void setName(String val) {
    final _$actionInfo = _$_EmailControllerBaseActionController.startAction();
    try {
      return super.setName(val);
    } finally {
      _$_EmailControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSubject(String val) {
    final _$actionInfo = _$_EmailControllerBaseActionController.startAction();
    try {
      return super.setSubject(val);
    } finally {
      _$_EmailControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setText(String val) {
    final _$actionInfo = _$_EmailControllerBaseActionController.startAction();
    try {
      return super.setText(val);
    } finally {
      _$_EmailControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateName(String value) {
    final _$actionInfo = _$_EmailControllerBaseActionController.startAction();
    try {
      return super.validateName(value);
    } finally {
      _$_EmailControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateSubject(String value) {
    final _$actionInfo = _$_EmailControllerBaseActionController.startAction();
    try {
      return super.validateSubject(value);
    } finally {
      _$_EmailControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateText(String value) {
    final _$actionInfo = _$_EmailControllerBaseActionController.startAction();
    try {
      return super.validateText(value);
    } finally {
      _$_EmailControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}

mixin _$FormErrorState on _FormErrorStateBase, Store {
  Computed<bool> _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors)).value;

  final _$nameAtom = Atom(name: '_FormErrorStateBase.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$subjectAtom = Atom(name: '_FormErrorStateBase.subject');

  @override
  String get subject {
    _$subjectAtom.context.enforceReadPolicy(_$subjectAtom);
    _$subjectAtom.reportObserved();
    return super.subject;
  }

  @override
  set subject(String value) {
    _$subjectAtom.context.conditionallyRunInAction(() {
      super.subject = value;
      _$subjectAtom.reportChanged();
    }, _$subjectAtom, name: '${_$subjectAtom.name}_set');
  }

  final _$textAtom = Atom(name: '_FormErrorStateBase.text');

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
}
