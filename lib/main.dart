import 'package:flutter/material.dart';
import 'package:flutter_integration_test/string.dart';

void main() => runApp(MyApp());
final _title = 'Integration Test';
final _formKey = GlobalKey<FormState>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Center(
              child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextFormField(
                  key: Key(usernameKeyString),
                  decoration: InputDecoration(hintText: 'Username'),
                ),
                TextFormField(
                  key: Key(passwordKeyString),
                  decoration: InputDecoration(hintText: 'Password'),
                ),
                RaisedButton(
                  key: Key(btnLoginKeyString),
                  onPressed: () {},
                  child: Text('Login'),
                )
              ],
            ),
          )),
        ));
  }
}
