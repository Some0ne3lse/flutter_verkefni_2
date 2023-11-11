import 'package:flutter/material.dart';
import 'package:flutter_verkefni_2/buttons/big_button.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.startQuiz});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(128, 1, 25, 136),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Learning about me!',
            style: GoogleFonts.playfairDisplay(
              color: const Color.fromARGB(255, 246, 221, 221),
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          BigButton(
            text: 'Start Quiz',
            onTap: startQuiz,
            icon: const Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}
