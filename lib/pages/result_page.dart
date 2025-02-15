import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/models/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.selectedAnswers,
    required this.onPressed,
  });

  final List<String> selectedAnswers;

  final void Function() onPressed;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add(
        {
          'questionIndex': i,
          'question': questions[i].question,
          'correctAnswer': questions[i].answers[0],
          'selectedAnswer': selectedAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectAnswers = summaryData
        .where((data) => data['correctAnswer'] == data['selectedAnswer'])
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Result Text
            Text(
              'You answered $numCorrectAnswers of $numTotalQuestions questions correctly!',
              textAlign: TextAlign.center,
              style: GoogleFonts.aBeeZee(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            SizedBox(height: 30),

            // List of question ands answers...
            QuestionsSummmary(summaryData: summaryData),

            SizedBox(height: 30),

            // Restart Quiz Button
            ElevatedButton.icon(
              icon: Icon(
                Icons.refresh,
                color: Colors.blue,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {
                onPressed();
                print('Quiz restarted');
              },
              label: Text(
                'Restart Quiz',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
