import 'package:adv_basic_quiz_app/data/questions.dart';
import 'package:adv_basic_quiz_app/question_summary/questions_summary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswer,
    required this.onRestart,
  });
  final List<String> chosenAnswer;
  final void Function() onRestart;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answer[0],
        'user_answer': chosenAnswer[i],
      });
      print(
        'Q$i → Question: ${questions[i].text}, Correct: ${questions[i].answer[0]}, Chosen: ${chosenAnswer[i]}',
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    print('Chosen Answers: $chosenAnswer');
    print('Summary Data: ${getSummaryData()}');

    // final summaryData = SummaryData;
    final numTotalQuestions = questions.length;
    final numCorrectAnswers =
        getSummaryData()
            .where((data) => data['user_answer'] == data['correct_answer'])
            .length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answer $numCorrectAnswers out of $numTotalQuestions question right',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            QuestionsSummary(getSummaryData()),
            SizedBox(height: 30),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              icon: Icon(Icons.refresh),
              label: Text('Restart Quiz!'),
            ),
          ],
        ),
      ),
    );
  }
}
