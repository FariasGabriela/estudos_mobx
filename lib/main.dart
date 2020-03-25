import 'package:estudos_mobx/counter.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter/material.dart';

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

  final counter = Counter();

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
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              onPressed: widget.counter.decrement,
              tooltip: 'Increment',
              child: Icon(Icons.chevron_left),
            ),
            SizedBox(width: 10),
            Observer(
              builder: (_) => Text(
                '${widget.counter.value}',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
            SizedBox(width: 10),
            FloatingActionButton(
              onPressed: widget.counter.increment,
              tooltip: 'Increment',
              child: Icon(Icons.chevron_right),
            )
          ],
        ),
      ),
    );
  }
}
