import 'package:adv_basic_quiz_app/widgets/answer_button.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Questions Screen', style: TextStyle(color: Colors.white)),
          SizedBox(height: 30),
          AnswerButton(onTap: () {}, answerText: 'Answer'),
          AnswerButton(onTap: () {}, answerText: 'Answer'),
          AnswerButton(onTap: () {}, answerText: 'Answer'),
          AnswerButton(onTap: () {}, answerText: 'Answer'),
        ],
      ),
    );
  }
}
