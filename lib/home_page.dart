import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.color});
  final List<Color> color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: color,
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Center(child: Text("data")),
      ),
    );
  }
}
