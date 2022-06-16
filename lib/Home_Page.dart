// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     int days = 30;
    String name = "Patel";
    return Scaffold(
      appBar: AppBar(
        title: Text('Medicine Reminder'),
      ),
        body: Center(
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: Text("This is my app $days $name "),
          ),
        ),
      );
  }
}