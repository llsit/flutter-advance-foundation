import 'package:flutter/material.dart';
import 'package:flutter_project2/data/question.dart';
import 'package:flutter_project2/question_screen.dart';
import 'package:flutter_project2/result_sreen.dart';
import 'package:flutter_project2/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(onSelectedAnswer: chooseAnswer);
    }

    if (activeScreen == 'results-screen') {
      screenWidget = const ResultScreen();
    }

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
          child: screenWidget,
        ),
      ),
    );
  }
}
