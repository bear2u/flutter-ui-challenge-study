import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  TextEditingController _idController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();

  LoginWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(
            left: 32.0, right: 32.0, bottom: 100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextField(
              controller: _idController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
                controller: _pwdController,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true),
            Theme(
              data: ThemeData(
                buttonColor: Colors.green,
              ),
              child: RaisedButton(
                onPressed: () {
                  print(_idController.text + ", " + _pwdController.text);
                  print('${_idController.text}, ${_pwdController.text}');
                },
                child: Text(
                  'SIGN IN',
                  style: Theme.of(context)
                      .textTheme
                      .body1
                      .apply(color: Colors.white),
                ),
              ),
            ),
            Text(
              'SIGN UP FOR AN ACCOUNT',
              style: Theme.of(context).copyWith().textTheme.caption,
            ),
          ],
        ),
      ),
    );
  }
}