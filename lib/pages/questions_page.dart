import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/components/answer_button.dart';
import 'package:quiz_app/models/data/questions.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({
    super.key,
    required this.onSelectAnswer,
  });
  final void Function(String answer) onSelectAnswer;
  @override
  State<QuestionsPage> createState() {
    return _QuestionsPageState();
  }
}

class _QuestionsPageState extends State<QuestionsPage> {
  var currentQuestionIndex = 0;

  void answerQusetion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      // currentQuestionIndex = currentQuestionIndex + 1; // Way 1
      // currentQuestionIndex += 1; // Way 2
      currentQuestionIndex++; // Way 3
      // currentQuestionIndex + 1; // Way 4
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Question Text
            Text(
              currentQuestion.question,
              textAlign: TextAlign.center,
              style: GoogleFonts.aBeeZee(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),

            // AnswerButtons
            ...currentQuestion.getShuffledAnswer().map(
              (answer) {
                return AnswerButton(
                  answerText: answer,
                  onPressed: () {
                    answerQusetion(answer);
                    print("Answered: '$answer'"); // Debugging
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
