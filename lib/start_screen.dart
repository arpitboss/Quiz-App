import 'package:flutter/material.dart';
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
        Center(
          child: Image.asset(
            'assets/images/quizzer_logo.png',
            filterQuality: FilterQuality.high,
            //color:const Color.fromARGB(150, 255, 255, 255),
            width: 300.0,
          ),
        ),
        const SizedBox(
          height: 60.0,
        ),
        Text(
          'Test Your Flutter Skills !!',
          style: GoogleFonts.lato(
              fontSize: 24.0, color: Color.fromARGB(255, 218, 103, 218)),
        ),
        const SizedBox(
          height: 30.0,
        ),
        OutlinedButton.icon(
          icon: const Icon(Icons.arrow_right_alt),
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          label: const Text('Start Quiz'),
        )
      ],
    ));
  }
}
