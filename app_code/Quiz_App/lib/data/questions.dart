import '../models/quiz_question.dart';

class Questions {
  List <QuizQuestion> question = [
  QuizQuestion(
  'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion(
    'How are Flutter UIs built?',
    [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using XCode for iOS and Android Studio for Android',
    ],
  ),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
   QuizQuestion(
    'Which of the following loops will execute at least once, regardless of the condition?',
    [
      'do...while loop',
      'for loop',
      'while loop',
      'foreach loop',
    ],
  ),
   QuizQuestion(
    'In object-oriented programming, what does the term "inheritance" refer to?',
    [
      'The ability to define a class based on another class',
      'The ability to create multiple instances of a class',
      'The ability to encapsulate data and methods',
      'The ability to create abstract classes',
    ],
  ),
];

}
