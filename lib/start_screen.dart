import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Center(
        child: Image.asset(
          'assets/images/quiz_logo.png',
          width: 400,
          height: 400,
        ),
      ),
      SizedBox(height: 32),
      Text(
        'Learn Flutter the fun way!',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      SizedBox(height: 32),
      TextButton(
        onPressed: 
          startQuiz,
        child: Text(
          'Start Quiz',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
    ],
  );
}
