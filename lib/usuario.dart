import 'package:mobx/mobx.dart';
part 'usuario.g.dart';

class Usuario = _Usuario with _$Usuario;

abstract class _Usuario with Store {
  @observable
  String nome = '';

  @observable
  String cpf = '';

  @observable
  String email = '';

  @action
  save(){
    print('Nome: ' + nome + ' / CPF: ' + cpf + ' / Email: ' + email);
    print(nome);
  }

  @action
  setName(String nome){
    this.nome = nome;
  }

  @action
  setCpf(String  cpf){
    this.cpf = cpf;
  }

  @action
  setEmail(String email){
    this.email = email;
  }
}