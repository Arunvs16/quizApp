import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.questionIndex,
    required this.isCorrectAnswer,
  });

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? Color.fromARGB(255, 6, 246, 130)
            : Color.fromARGB(255, 255, 53, 123),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber.toString(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 22, 2, 56),
        ),
      ),
    );
  }
}
