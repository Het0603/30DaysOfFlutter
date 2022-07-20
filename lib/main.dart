// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_app/pages/Home_Page.dart';
import 'package:practice_app/pages/login_page.dart';
import 'package:practice_app/utils/routes.dart';

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
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme() 
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: MyRoutes.homeroute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.loginroute: (context) => LoginPage(),
        MyRoutes.homeroute: (context) => HomePage(),
      },
    );
  }
}
