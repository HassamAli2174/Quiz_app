import 'package:adv_basic_quiz_app/question_summary/question_identifier.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItems extends StatelessWidget {
  const SummaryItems(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    // print('Summary Data: ${getSummaryData()}');

    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];
    print('isCorrectAnswer Answers: $isCorrectAnswer');
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: itemData['question_index'] as int,
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                itemData['user_answer'] as String,
                style: TextStyle(
                  color: const Color.fromARGB(134, 209, 206, 206),
                ),
              ),
              Text(
                itemData['correct_answer'] as String,
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
