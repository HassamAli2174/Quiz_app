import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: Colors.white,
          ),
          SizedBox(height: 20),
          Text(
            'Learn Flutter The Fun Way',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: () {
              //
            },
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(255, 193, 7, 1),
              foregroundColor: Colors.purple,
              shadowColor: Colors.amberAccent,
            ),
            icon: Icon(Icons.arrow_right_alt_outlined, color: Colors.black),
            label: Text(
              'Start Quiz',
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
