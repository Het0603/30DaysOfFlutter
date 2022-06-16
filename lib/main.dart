import 'package:flutter/material.dart';
import 'package:practice_app/Home_Page.dart';

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
    return const MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: HomePage(),
    );
  }
}
