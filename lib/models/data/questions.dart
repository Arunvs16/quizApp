import 'package:quiz_app/models/quiz_questions.dart';

const questions = [
  QuizQuestions(
    'What are the main building blocks in Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestions(
    'How are flutter UIs built?',
    [
      'By combining widgets',
      'By combining widgets in visual editor',
      'By defing widgets in config files',
      'By using XCode for IOS and Android Studio for Android',
    ],
  ),
  QuizQuestions(
    'What\'s purpose of  a stateful widgets? ',
    [
      'Update UI as Data changes',
      'Update Data as UI changes',
      'Ignore Data changes',
      'Render UI that doesn\'t depend on Data',
    ],
  ),
  QuizQuestions(
    'Which widgets should you try to use more often: Stateless widget or Stateful widget?',
    [
      'Stateless widget',
      'Stateful widget',
      'Both are equally good',
      'Non of the above',
    ],
  ),
  QuizQuestions(
    'What happens if you change Data in a Stateless widget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest Statefulwidget is updated',
      'Any nested statefulwidgets are updated',
    ],
  ),
  QuizQuestions(
    'How should you update data inside of statefulwidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
];
