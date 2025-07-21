import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuistionScreenState();
  }
}

class _QuistionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('The Question...'),
          SizedBox(height: 30),
          ElevatedButton(onPressed: () {}, child: Text('Answers 1')),
          SizedBox(height: 30),
          ElevatedButton(onPressed: () {}, child: Text('Answers 2')),
          SizedBox(height: 30),
          ElevatedButton(onPressed: () {}, child: Text('Answers 3')),
          SizedBox(height: 30),
          ElevatedButton(onPressed: () {}, child: Text('Answers 4')),
        ],
      ),
    );
  }
}
