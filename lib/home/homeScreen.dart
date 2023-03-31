import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int red = 150;
  int green = 150;
  int blue = 150;

  void changeColor() {
    var r = Random();
    red = r.nextInt(255);
    green = r.nextInt(255);
    blue = r.nextInt(255);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(red, green, blue, 1),
      body: InkWell(
        onTap: () {
          changeColor();
        },
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: const Center(
            child: Text("Hello There"),
          ),
        ),
      ),
    );
  }
}
