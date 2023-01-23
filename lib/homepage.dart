import 'package:flutter/material.dart';

import 'package:quize_3/quation.dart';

import 'option.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var questionIndex = 0;

  var totalScore = 0;

  var questions= [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText':  'What\'s your favorite cricketer?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 5},
        {'text': 'Max', 'score': 10},
        {'text': 'Max', 'score': 9}
      ],
    },


  ];
  void updateQuestion(int score) {
    totalScore= totalScore+score;
    setState(() {
      questionIndex++;  //questionIndex = questionIndex+1
    });



  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: questionIndex<questions.length?
        Quiz(questions: questions,questionIndex: questionIndex, updateQuestion: updateQuestion,)
            :Result(totalScore)


    );
  }


}
