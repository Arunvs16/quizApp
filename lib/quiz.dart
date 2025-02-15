import 'package:flutter/material.dart';
import 'package:quiz_app/models/data/questions.dart';
import 'package:quiz_app/pages/questions_page.dart';
import 'package:quiz_app/pages/result_page.dart';
import 'package:quiz_app/pages/start_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];

  var activePage = ' startPage';

  void switchPage() {
    setState(() {
      activePage = 'questionsPage';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activePage = 'resultPage';
        print('Quiz completed');
        print(selectedAnswers);
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activePage = 'startPage';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartPage(switchPage);

    if (activePage == 'questionsPage') {
      screenWidget = QuestionsPage(onSelectAnswer: chooseAnswer);
    }

    if (activePage == 'resultPage') {
      screenWidget = ResultPage(
        selectedAnswers: selectedAnswers,
        onPressed: restartQuiz,
      );
    }

    final Color color1 = Colors.blue;
    final Color color2 = Colors.purple;

    Alignment begin = Alignment.topLeft;
    Alignment end = Alignment.bottomRight;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: color1,
        body: Container(
          // decoration: BoxDecoration(
          // gradient: LinearGradient(
          //   colors: [
          //     color1,
          //     color2,
          //   ],
          //   begin: begin,
          //   end: end,
          // ),
          // ),
          child: screenWidget,
        ),
      ),
    );
  }
}
