// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$User on _User, Store {
  Computed<String> _$nomeCompletoComputed;

  @override
  String get nomeCompleto =>
      (_$nomeCompletoComputed ??= Computed<String>(() => super.nomeCompleto))
          .value;

  final _$nomeAtom = Atom(name: '_User.nome');

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

  final _$sobrenomeAtom = Atom(name: '_User.sobrenome');

  @override
  String get sobrenome {
    _$sobrenomeAtom.context.enforceReadPolicy(_$sobrenomeAtom);
    _$sobrenomeAtom.reportObserved();
    return super.sobrenome;
  }

  @override
  set sobrenome(String value) {
    _$sobrenomeAtom.context.conditionallyRunInAction(() {
      super.sobrenome = value;
      _$sobrenomeAtom.reportChanged();
    }, _$sobrenomeAtom, name: '${_$sobrenomeAtom.name}_set');
  }

  final _$_UserActionController = ActionController(name: '_User');

  @override
  dynamic setName(String nome) {
    final _$actionInfo = _$_UserActionController.startAction();
    try {
      return super.setName(nome);
    } finally {
      _$_UserActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSobrenome(String sobrenome) {
    final _$actionInfo = _$_UserActionController.startAction();
    try {
      return super.setSobrenome(sobrenome);
    } finally {
      _$_UserActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'nome: ${nome.toString()},sobrenome: ${sobrenome.toString()},nomeCompleto: ${nomeCompleto.toString()}';
    return '{$string}';
  }
}
