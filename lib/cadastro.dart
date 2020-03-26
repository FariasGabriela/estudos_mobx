import 'package:flutter/material.dart';

import 'ListUsers.dart';
import 'allUsuarios.dart';
import 'main.dart';
import 'usuario.dart';

class Cadastro extends StatefulWidget {
  Cadastro({this.title, this.allUsers});

  final String title;

  final AllUsuarios allUsers;

  final usuario = Usuario();

  @override
  _Cadastro createState() => _Cadastro();
}

class _Cadastro extends State<Cadastro> {

  final _formKey = GlobalKey<FormState>();


  _textField({String labelText, onChange}){
    return TextFormField(
      onChanged: onChange,
      validator: (String value) {
        print(value);
        if (value.isEmpty){
          return 'Campo obrigatório';
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder()
      )
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem vindo a pagina de cadastro'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              _textField(
                  labelText: 'Nome',
                  onChange: widget.usuario.setName
              ),
              SizedBox(height: 10),
              _textField(
                  labelText: 'CPF',
                  onChange: widget.usuario.setCpf
              ),
              SizedBox(height: 10),
              _textField(
                  labelText: 'Email',
                  onChange: widget.usuario.setEmail
              )
            ],
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_formKey.currentState.validate()){
            widget.usuario.save();
            widget.allUsers.addUser(widget.usuario);
            Navigator.pop(context);
          } else {
            print('preencha todos os campos!');
          }
        },
        tooltip: 'Button Teste',
        child: const Icon(Icons.save),
      ),
    );
  }
}