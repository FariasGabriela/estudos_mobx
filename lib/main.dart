
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter/material.dart';

import 'ListUsers.dart';
import 'cadastro.dart';
import 'user.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  final user = User();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Nome',
                border: OutlineInputBorder(),
              ),
              onChanged: widget.user.setName,
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Sobrenome',
                border: OutlineInputBorder(),
              ),
              onChanged: widget.user.setSobrenome,
            ),
            SizedBox(height: 10),
            Observer(
              builder: (_) => Text(
                '${widget.user.nomeCompleto}',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() =>
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ListUsers())
          )
        ),
        tooltip: 'Button Teste',
        child: const Icon(Icons.new_releases),
      ),
    );
  }
}
