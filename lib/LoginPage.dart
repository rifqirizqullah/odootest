import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _LoginPage();
  }
}

class _LoginPage extends State<LoginPage> {

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 170, 102, 204),
      body: SafeArea(child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        children: <Widget>[
          SizedBox(height: 8.0),
          Column(
            children: <Widget>[
              SizedBox(height: 16.0),
              Text('ODOO')
            ],
          ),
          SizedBox(height: 60.0),
          TextField(
            decoration: InputDecoration(
              filled: true,
              labelText: 'Host',
              fillColor: Colors.white,
            ),
          ),
          SizedBox(height: 12.0),
          TextField(
            controller: _usernameController,
            decoration: InputDecoration(
              filled: true,
              labelText: 'Username',
              fillColor: Colors.white,
            ),
          ),
          SizedBox(height: 12.0),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
              filled: true,
              labelText: 'Password',
              fillColor: Colors.white,
            ),
            obscureText: true,
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: Text('CANCEL'),
                onPressed: () {
                  _usernameController.clear();
                  _passwordController.clear();
                },
              ),
              RaisedButton(
                child: Text('NEXT'),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          )
        ],
      )),
    );
  }
}