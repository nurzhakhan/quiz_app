import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  List<String> selectedAnswers = <String>[];

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);

    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(onSelectetAnswer: chooseAnswer);
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];

        activeScreen = StartScreen(switchScreen);
      });
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(backgroundColor: Colors.deepPurple, body: activeScreen),
    );
  }
}
