// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practice_app/pages/Home_Page.dart';
import 'package:practice_app/pages/login_page.dart';

void main() {
  runApp(
    const Myapp(),
  );
}

// ignore: must_be_immutable
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => LoginPage(),
        "/login": (context) => LoginPage(),
        "/homepage": (context) => HomePage(),     
      },
    );
  }
}
