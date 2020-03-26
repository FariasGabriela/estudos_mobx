// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Usuario on _Usuario, Store {
  final _$nomeAtom = Atom(name: '_Usuario.nome');

  @override
  String get nome {
    _$nomeAtom.context.enforceReadPolicy(_$nomeAtom);
    _$nomeAtom.reportObserved();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.context.conditionallyRunInAction(() {
      super.nome = value;
      _$nomeAtom.reportChanged();
    }, _$nomeAtom, name: '${_$nomeAtom.name}_set');
  }

  final _$cpfAtom = Atom(name: '_Usuario.cpf');

  @override
  String get cpf {
    _$cpfAtom.context.enforceReadPolicy(_$cpfAtom);
    _$cpfAtom.reportObserved();
    return super.cpf;
  }

  @override
  set cpf(String value) {
    _$cpfAtom.context.conditionallyRunInAction(() {
      super.cpf = value;
      _$cpfAtom.reportChanged();
    }, _$cpfAtom, name: '${_$cpfAtom.name}_set');
  }

  final _$emailAtom = Atom(name: '_Usuario.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$_UsuarioActionController = ActionController(name: '_Usuario');

  @override
  dynamic save() {
    final _$actionInfo = _$_UsuarioActionController.startAction();
    try {
      return super.save();
    } finally {
      _$_UsuarioActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setName(String nome) {
    final _$actionInfo = _$_UsuarioActionController.startAction();
    try {
      return super.setName(nome);
    } finally {
      _$_UsuarioActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCpf(String cpf) {
    final _$actionInfo = _$_UsuarioActionController.startAction();
    try {
      return super.setCpf(cpf);
    } finally {
      _$_UsuarioActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setEmail(String email) {
    final _$actionInfo = _$_UsuarioActionController.startAction();
    try {
      return super.setEmail(email);
    } finally {
      _$_UsuarioActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'nome: ${nome.toString()},cpf: ${cpf.toString()},email: ${email.toString()}';
    return '{$string}';
  }
}
