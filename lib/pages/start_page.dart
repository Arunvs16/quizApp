import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatelessWidget {
  const StartPage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    String text = 'Learn flutter the fun way!';
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // question mark image
          Opacity(
            opacity: 0.8,
            child: Image.asset(
              'images/Question.png',
              width: 300,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          //  text
          Text(
            text,
            style: GoogleFonts.aBeeZee(
              color: Colors.white,
              fontSize: 30,
            ),
          ),

          SizedBox(
            height: 30,
          ),
          // Button
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              elevation: 5,
              backgroundColor: Colors.white,
            ),
            onPressed: () {
              print('Quiz started');
              startQuiz();
            },
            icon: Icon(
              Icons.arrow_right_alt,
              color: Colors.blue,
            ),
            label: Text(
              'Start Quiz',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
