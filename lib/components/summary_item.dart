import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/components/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(context) {
    final isCorrectAnswer =
        itemData['selectedAnswer'] == itemData['correctAnswer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
            questionIndex: itemData['questionIndex'] as int,
            isCorrectAnswer: isCorrectAnswer),
        SizedBox(width: 20),

        // column
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // question
              Text(
                itemData['question'] as String,
                style: GoogleFonts.aBeeZee(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              // selected answer
              Text(
                itemData['selectedAnswer'] as String,
                style: TextStyle(
                  color: isCorrectAnswer
                      ? const Color.fromARGB(255, 5, 255, 134)
                      : Color.fromARGB(255, 255, 53, 53),
                ),
              ),
              SizedBox(height: 5),
              // correct answer
              Text(
                itemData['correctAnswer'] as String,
                style: TextStyle(
                  color: const Color.fromARGB(255, 5, 255, 134),
                ),
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ],
    );
  }
}
