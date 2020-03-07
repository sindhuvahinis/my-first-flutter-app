import 'package:firstapp/quiz.dart';
import 'package:firstapp/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // Questions and answers map
  var _questions = [
    {
      'questionText':
          'Which coursework you would like to choose for the next semester?',
      'answers': [
        'CS 5800 Algorithms',
        'CS 5010 Design Paradigm',
        'CS 5600 Computer Systems',
        'CS 6650 Distrubuted Systems'
      ]
    },
    {
      'questionText':
          'Which clubs do you want the university to sponsor next semester?',
      'answers': [
        'Google Students Club',
        'Microsoft Students Club',
        'Cycling club',
        'Bowling club'
      ]
    },
    {
      'questionText': 'What is your favourite study area around the campus?',
      'answers': ['Java Room', 'Python Room', 'IOT classroom', 'Library']
    },
    {
      'questionText':
          'Which new technology you would like to see around the campus?',
      'answers': [
        '3D Printer',
        'Driver less car',
        'Coffee Robot',
      ]
    }
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'University Campus Survey',
            ),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result()),
    );
  }
}
