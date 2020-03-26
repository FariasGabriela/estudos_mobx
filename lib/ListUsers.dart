import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'allUsuarios.dart';
import 'cadastro.dart';


class ListUsers extends StatefulWidget {
  ListUsers({this.title});

  final String title;

  final AllUsuarios allUsers = new AllUsuarios();

  @override
  _ListUsers createState() => _ListUsers();
}

class _ListUsers extends State<ListUsers> {

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem vindo a pagina de listagem'),
      ),
      body: Observer(
        builder: (_) =>
          ListView.builder(
          itemCount: widget.allUsers.getAllUsers.length,
          itemBuilder: (context, index) {
            print(widget.allUsers.allUser[index]);

            return ListTile(
                title: Text('Nome: ${widget.allUsers.getAllUsers[index].nome} '),
                subtitle: Text('CPF: ${widget.allUsers.getAllUsers[index].cpf} '),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() =>
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cadastro(
                  title: 'teste',
                  allUsers: widget.allUsers
                ),
              ),
            )
        ),
        tooltip: 'Button Teste',
        child: const Icon(Icons.new_releases),
      ),
    );
  }
}