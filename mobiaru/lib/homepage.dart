import 'package:mobiaru/signup.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String emailAddress;
  final String password;
  final String confirmPassword;
  HomePage(
      {Key key,
      @required this.emailAddress,
      @required this.password,
      @required this.confirmPassword})
      : super(key: key);
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
        body: new ListView(
      children: [
        Text(
          'Mobiaru',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.red, fontSize: 60),
        ),
        new Text('Your email address is $emailAddress'),
        new Text('Your password is $password'),
        new Text('Your confirmed assword is $confirmPassword'),
        new ElevatedButton(
          onPressed: () {
            Navigator.push(
              ctxt,
              new MaterialPageRoute(builder: (ctxt) => new Signup()),
            );
          },
          child: Text('To Signup Page'),
          style: ElevatedButton.styleFrom(primary: Colors.red),
        ),
      ],
    ));
  }
}
