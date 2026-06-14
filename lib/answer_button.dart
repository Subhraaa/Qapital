import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answerText;
  final void Function() onTap;

  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton( //IT IS BY DEFAULT CURVED BUTTONS
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 31, 111, 95),
        foregroundColor: Colors.white,
       padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        textStyle: const TextStyle(fontSize: 18),
       
        shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
      ),
      child: Text(answerText,
       textAlign: TextAlign.center),
      
    );
  }
} 