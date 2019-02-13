import 'package:flutter/material.dart';
import 'package:flutter_ui_exam1/login_form_widget.dart';

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
                width: MediaQuery.of(context).size.width / 2,
                fit: BoxFit.fitWidth,
              ),
            ),
            flex: 3,
          ),
          Expanded(
            child: LoginWidget(),
            flex: 7,
          ),
        ],
      ),
    ));
  }
}
