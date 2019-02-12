import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Image.asset(
                "asset/images/logo.png",
                width: 150.0,
                fit: BoxFit.fitWidth,
              ),
            ),
            flex: 3,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16.0, bottom: 100.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: 'Username'),
                    ),
                    TextField(
                        decoration: InputDecoration(labelText: 'Password'),
                        obscureText: true),
                    RaisedButton(
                      onPressed: () {},
                      child: Text('SIGN IN'),
                    ),
                    Text('SIGN UP FOR AN ACCOUNT'),
                  ],
                ),
              ),
            ),
            flex: 7,
          ),
        ],
      ),
    ));
  }
}
