import 'package:mobx/mobx.dart';
part 'user.g.dart';

class User = _User with _$User;

abstract class _User with Store {
  @observable
  String nome = '';

  @observable
  String sobrenome = '';

  @computed
  String get nomeCompleto => "$nome $sobrenome";

  @action
  setName(String nome){
    this.nome = nome;
  }

  @action
  setSobrenome(String sobrenome){
    this.sobrenome = sobrenome;
  }
}