// ignore_for_file: prefer_const_constructors, sort_child_properties_last, must_be_immutable, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:practice_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              'images/undraw_Fingerprint_re_uf3f.png',
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 28,
                color: Colors.cyan,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 0,
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
                    onChanged: (value) {
                      name = value;
                      setState(
                        () {},
                      );
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  InkWell(
                    onTap: () async {
                      setState(() {
                        changebutton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeroute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 40,
                      width: changebutton ? 40 : 150,
                      alignment: Alignment.center,
                      child: changebutton
                          ? Icon(Icons.done)
                          : Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                      decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius:
                            BorderRadius.circular(changebutton ? 40 : 8),
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   child: Text("Login"),
                  //   style: ElevatedButton.styleFrom(
                  //       minimumSize: Size(110, 40),
                  //       onPrimary: Colors.white,
                  //       primary: Colors.cyan),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeroute);
                  //   },
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
