import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar Demo',
      home: MyHomePage(),
    );
  }
}

// Scaffold.of(context) returns the locally created Scaffold
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
      ),
      body: Builder(builder: (BuildContext scaffoldcontext) {
        return Center(
          child: RaisedButton(
            onPressed: () {
              Scaffold.of(scaffoldcontext).showSnackBar(
                SnackBar(
                  content: Text('Help!'),
                ),
              );
            },
            child: Text('Show SnackBar'),
          ),
        );
      }),
    );
  }
}