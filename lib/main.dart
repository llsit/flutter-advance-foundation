import 'package:flutter/material.dart';
import 'package:flutter_project2/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color.fromARGB(255, 106, 59, 186), const Color.fromARGB(255, 61, 9, 150)],
            ),
          ),
          child: StartScreen(),
        ),
      ),
    ),
  );
}
