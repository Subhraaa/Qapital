import 'package:flutter/material.dart';

class QuizBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
          opacity: 0.1,
          child: Image.asset('assets/cash1.png', width: 300, height: 300),
          
          ),
          
          Text(
            'Learn personal finance the fun way!',
            style: TextStyle(fontSize: 24, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16), // Add some spacing 
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.play_arrow),
            label: Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}