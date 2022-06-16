import 'package:flutter/material.dart';

void main() {
  runApp(
    const Myapp(),
  );
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Material(
          child: Center(
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: const Text("This is my app"),
            ),
          ),
        ));
  }
}
