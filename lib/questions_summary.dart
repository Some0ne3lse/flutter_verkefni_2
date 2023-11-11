import 'package:flutter/material.dart';
import 'package:flutter_verkefni_2/summary_extras/question_number.dart';
import 'package:flutter_verkefni_2/summary_extras/question_text.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(63, 2, 156, 252),
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        height: 450,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Column(
                children: summaryData.map(
                  (data) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                textColor:
                                    const Color.fromARGB(255, 255, 255, 255),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              QuestionText(
                                dataText: data['user_answer'] as String,
                                textColor:
                                    const Color.fromARGB(255, 250, 199, 0),
                              ),
                              QuestionText(
                                dataText: data['correct_answer'] as String,
                                textColor: const Color.fromARGB(255, 1, 5, 185),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
