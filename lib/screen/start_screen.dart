import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quizz.png',
            width: 300,
          ),
          const Gap(15),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.poppins(
                color: const Color.fromARGB(255, 255, 243, 250),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          const Gap(15),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.orange,
            ),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
