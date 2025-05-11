import 'package:adv_basic_quiz_app/data/questions.dart';
import 'package:adv_basic_quiz_app/widgets/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:adv_basic_quiz_app/widgets/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion() {
    // currentQuestionIndex += 1;
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        // margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(234, 94, 6, 89),
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            // how does ... spread operator works
            //const current num = [1,2,3]
            //const morenum= [[num,4]------[[1,2,3],4]
            //const morenum = [[...num,2]------[1,2,3,4]
            ...currentQuestion.getShuffledAnswer().map((ans) {
              return AnswerButton(answerText: ans, onTap: answerQuestion);
            }),
            // AnswerButton(onTap: () {}, answerText: currentQuestion.answer[0]),
            // AnswerButton(onTap: () {}, answerText: currentQuestion.answer[1]),
            // AnswerButton(onTap: () {}, answerText: currentQuestion.answer[2]),
            // AnswerButton(onTap: () {}, answerText: currentQuestion.answer[3]),
          ],
        ),
      ),
    );
  }
}
