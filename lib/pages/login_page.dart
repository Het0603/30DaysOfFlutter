// ignore_for_file: prefer_const_constructors, sort_child_properties_last

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
            'Welcome to Login',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      body: Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              'images/undraw_Fingerprint_re_uf3f.png',
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "UserName",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    child: Text("Login"),
                    style: ElevatedButton.styleFrom(
                        onPrimary: Colors.white, primary: Colors.cyan),
                    onPressed: () {
                      print("Hello User");
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
