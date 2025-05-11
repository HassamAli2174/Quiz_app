import 'package:adv_basic_quiz_app/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basic_quiz_app/home_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  var activeScreen = 'start-screen';

  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = MyHomePage(switchScreen);
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.amber],
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
            ),
          ),
          child:
              activeScreen == 'start-screen'
                  ? MyHomePage(switchScreen)
                  : QuestionsScreen(),
        ),
      ),
    );
  }
}
