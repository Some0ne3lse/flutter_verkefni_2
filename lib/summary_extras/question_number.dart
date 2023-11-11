import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionNumber extends StatelessWidget {
  const QuestionNumber(
      {super.key,
      required this.questionNumber,
      required this.correctOrIncorrect});

  final String questionNumber;
  final bool correctOrIncorrect;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: correctOrIncorrect
            ? const Color.fromARGB(255, 110, 225, 239)
            : const Color.fromARGB(255, 252, 114, 114),
      ),
      margin: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          questionNumber,
          style: GoogleFonts.oswald(
              color: const Color.fromARGB(255, 0, 0, 0), fontSize: 20),
        ),
      ),
    );
  }
}
