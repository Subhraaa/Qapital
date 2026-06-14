import 'package:flutter/material.dart';
import 'package:quiz_app/main_screen.dart';
import 'package:quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizScreen();
}

class _QuizScreen extends State<Quiz> {
  final List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';
   void switchScreen() {
    setState(() { // rebuilds the widget tree with the new active screen
      activeScreen = 'questions-screen';
    }); 
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = MainScreen(switchScreen);
    if(activeScreen == 'questions-screen') {
      screenWidget =  QuestionScreen(onSelectAnswer: chooseAnswer);
    }
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 47, 160, 132),
        body: Container(child: screenWidget),
      ),
    );
  }
} 