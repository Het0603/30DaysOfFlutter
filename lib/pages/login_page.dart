// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(
          child: Text(
            'Login page',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Material(
        child: Center(
          child: Text('Hello New User'),
        ),
      ),
    );
  }
}
