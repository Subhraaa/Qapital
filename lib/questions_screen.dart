 import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/questions.dart'; 
import 'package:google_fonts/google_fonts.dart';

 class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;
   @override
   State<QuestionScreen> createState() =>  _QuestionScreen();
 }
  class _QuestionScreen extends State<QuestionScreen> {
    var currentQuestionIndex = 0;
      void answerQuestion(String selectedAnswer) {
        widget.onSelectAnswer(selectedAnswer);
        setState(() { // rebuilds the widget tree with the new question index
          currentQuestionIndex++;
        });
      }
      
  @override
  Widget build(BuildContext context) {
    final currentQuestion = QuizQuestion().questionList[currentQuestionIndex]; // Get the current question from the list
   return SizedBox(
    width: double.infinity,// makes the container take the full width of the screen, use as much width as you can
    child: Container(
    margin: const EdgeInsets.all(20), // Add some margin around the container
   child:Column(
    mainAxisAlignment: MainAxisAlignment.center,//vertical axis
    crossAxisAlignment: CrossAxisAlignment.stretch,//horizontal axis
    children: [
      Text(currentQuestion.text, style: GoogleFonts.lato(fontSize: 24, color: const Color.fromARGB(255, 111, 207, 151)), textAlign: TextAlign.center,),
      const SizedBox(height: 20), // Add some spacing between the question and options

      ...currentQuestion.getShuffledAnswers().map((answer) => AnswerButton(
        answerText: answer, // Use the current answer option
        onTap:  answerQuestion, // Call the answerQuestion method when an answer is tapped
      )),
      
    ],
   )));
  }

  }
 