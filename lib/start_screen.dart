import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 300),
          const SizedBox(height: 80),
          const Text(
            "Learn Flutter the fun way",
            style: TextStyle(
              color: Color.fromARGB(98, 255, 255, 255),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Color.fromARGB(98, 255, 255, 255),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz!"),
          ),
        ],
      ),
    );
  }
}
