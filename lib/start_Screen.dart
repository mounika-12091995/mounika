import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final  void Function() startQuiz;
  @override
  Widget build(context) {
    return Center( 
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(122, 241, 204, 128),
          ),
          const SizedBox(height: 80),
           Text(
            'Learn Flutter The Fun Way',
            style: GoogleFonts.lato(color: Colors.amber, fontSize: 24),
          ),
          const SizedBox(height: 40),
          OutlinedButton.icon(
              onPressed: () {
                startQuiz();
              },
              style: OutlinedButton.styleFrom(foregroundColor: Colors.amber),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start Quiz'))
        ],
      ),
    );
  }
}
