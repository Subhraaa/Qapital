import 'package:flutter/material.dart';
import 'package:quiz_app/quizbody.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 134, 104),
      body: QuizBody(),
    ),
  ));
}