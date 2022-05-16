// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import 'package:flutter_assignment/text.dart' as text_lib;
import 'package:flutter_assignment/textControl.dart';

void main() => runApp(const App());

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {

  final _hello = 'Click count: ';
  var _counter = 0;
  String _text = '';


  _AppState() {
    _text = _getText();
  }

  void _increment() {
    _counter++;
    setState(() {
      _text = _getText();
    });
  }

  String _getText() {
    return _hello + _counter.toString();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Increment On Press'),
          ),
          body: Center(
            child: Column(
              children: [
                text_lib.Text(_text),
                TextControl(_increment),
              ],
            ),
          )),
    );
  }
}
