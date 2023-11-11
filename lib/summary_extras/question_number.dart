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
      width: 40,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(178, 201, 0, 255),
              blurRadius: 7,
            ),
          ],
          color: correctOrIncorrect
              ? const Color.fromARGB(178, 110, 225, 239)
              : const Color.fromARGB(179, 252, 114, 114),
          borderRadius: BorderRadius.circular(100)),
      margin: const EdgeInsets.all(20),
      child: Align(
        alignment: Alignment.topCenter,
        child: Center(
          child: Text(
            questionNumber.toString(),
            style: GoogleFonts.robotoMono(
                color: const Color.fromARGB(255, 255, 255, 255), fontSize: 20),
          ),
        ),
      ),
    );
  }
}
