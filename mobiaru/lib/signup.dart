import 'package:flutter/material.dart';
import 'package:mobiaru/homepage.dart';

class Signup extends StatelessWidget {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confirmPasswordController = new TextEditingController();

  @override
  Widget build(BuildContext ctxt) {
    return Container(
        child: Scaffold(
      body: ListView(
        children: [
          Text(
            'Mobiaru',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.red, fontSize: 60),
          ),
          Text(
            'モバイル',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.red, fontSize: 40),
          ),
          // new TextField(
          //   controller: firstNameController,
          //   decoration: InputDecoration(
          //       border: OutlineInputBorder(), hintText: 'First Name'),
          // ),
          // new TextField(
          //   controller: lastNameController,
          //   decoration: InputDecoration(
          //       border: OutlineInputBorder(), hintText: 'Last Name'),
          // ),
          new TextField(
            controller: emailController,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Email Address'),
          ),
          new TextField(
            controller: passwordController,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Password'),
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
          ),
          new TextField(
            controller: confirmPasswordController,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Confirm Password'),
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
          ),
          new ElevatedButton(
              onPressed: () {
                Navigator.push(
                  ctxt,
                  new MaterialPageRoute(
                      builder: (ctxt) => new HomePage(
                          emailAddress: emailController.text,
                          password: passwordController.text,
                          confirmPassword: confirmPasswordController.text)),
                );
              },
              child: Text('Sign-Up'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              )),
          new TextButton(
              child: Text("Login"),
              style: TextButton.styleFrom(primary: Colors.red),
              onPressed: () {
                print('To login!');
              })
        ],
      ),
    ));
  }
}
