import 'package:flutter/material.dart';
import 'package:flutter_project2/question_screen.dart';
import 'package:flutter_project2/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 106, 59, 186),
                const Color.fromARGB(255, 61, 9, 150),
              ],
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
