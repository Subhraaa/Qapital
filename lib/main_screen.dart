import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatelessWidget {
  const MainScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

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
            style: GoogleFonts.lato(fontSize: 24, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16), // Add some spacing 
          ElevatedButton.icon(
            onPressed:startQuiz, // Call the startQuiz callback when the button is pressed
            icon: Icon(Icons.play_arrow),
            label: Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}