import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          SizedBox(height: 20),
          Text(
            'Learn Flutter The Fun Way',
            style: GoogleFonts.lato(fontSize: 20, color: Colors.white),
          ),
          SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(255, 193, 7, 1),
              foregroundColor: Colors.purple,
              shadowColor: Colors.amberAccent,
            ),
            icon: Icon(Icons.arrow_right_alt_outlined, color: Colors.black),
            label: Text(
              'Start Quiz',
              style: GoogleFonts.lato(fontSize: 15, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
