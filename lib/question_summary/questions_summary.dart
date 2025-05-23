import 'package:adv_basic_quiz_app/question_summary/summary_items.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    print('Summary Data: ${summaryData}');
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                // return Row(
                //   children: [
                //     Text(((data['question_index'] as int) + 1).toString()),
                //     Expanded(
                //       child: Column(
                //         children: [
                //           Text(data['question'] as String),
                //           SizedBox(height: 5),
                //           Text(data['user_answer'] as String),
                //           Text(data['correct_answer'] as String),
                //         ],
                //       ),
                //     ),
                //   ],
                // );
                return SummaryItems(data);
              }).toList(),
        ),
      ),
    );
  }
}
