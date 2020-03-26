// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allUsuarios.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AllUsuarios on _AllUsuarios, Store {
  Computed<List<Usuario>> _$getAllUsersComputed;

  @override
  List<Usuario> get getAllUsers => (_$getAllUsersComputed ??=
          Computed<List<Usuario>>(() => super.getAllUsers))
      .value;

  final _$allUserAtom = Atom(name: '_AllUsuarios.allUser');

  @override
  List<Usuario> get allUser {
    _$allUserAtom.context.enforceReadPolicy(_$allUserAtom);
    _$allUserAtom.reportObserved();
    return super.allUser;
  }

  @override
  set allUser(List<Usuario> value) {
    _$allUserAtom.context.conditionallyRunInAction(() {
      super.allUser = value;
      _$allUserAtom.reportChanged();
    }, _$allUserAtom, name: '${_$allUserAtom.name}_set');
  }

  final _$_AllUsuariosActionController = ActionController(name: '_AllUsuarios');

  @override
  dynamic addUser(Usuario value) {
    final _$actionInfo = _$_AllUsuariosActionController.startAction();
    try {
      return super.addUser(value);
    } finally {
      _$_AllUsuariosActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'allUser: ${allUser.toString()},getAllUsers: ${getAllUsers.toString()}';
    return '{$string}';
  }
}
