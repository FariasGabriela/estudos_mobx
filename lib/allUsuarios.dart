import 'package:mobx/mobx.dart';

import 'usuario.dart';
part 'allUsuarios.g.dart';

class AllUsuarios = _AllUsuarios with _$AllUsuarios;

abstract class _AllUsuarios with Store {
  @observable
  List<Usuario> allUser = [];

  @computed
  List<Usuario> get getAllUsers => allUser;

  @action
  addUser(Usuario value){
    allUser.add(value);
  }
}