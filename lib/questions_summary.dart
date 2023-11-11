import 'package:flutter/material.dart';
import 'package:flutter_verkefni_2/summary_extras/question_number.dart';
import 'package:flutter_verkefni_2/summary_extras/question_text.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  QuestionNumber(
                    questionNumber:
                        ((data['question_index'] as int) + 1).toString(),
                    correctOrIncorrect: (data['user_answer'] as String) ==
                        (data['correct_answer'] as String),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        QuestionText(
                          dataText: data['question'] as String,
                          textColor: const Color.fromARGB(255, 255, 255, 255),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        QuestionText(
                          dataText: data['user_answer'] as String,
                          textColor: const Color.fromARGB(255, 144, 89, 255),
                        ),
                        QuestionText(
                          dataText: data['correct_answer'] as String,
                          textColor: const Color.fromARGB(255, 19, 0, 255),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
