
import 'package:flutter/material.dart';
import 'package:quize_3/quation1.dart';

import 'option1.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function updateQuestion;

  Quiz({required this.questions,required this.questionIndex,required this.updateQuestion});


  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Quation(questions[questionIndex]['questionText'].toString()),
            ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
              return Option(
                      () => updateQuestion(
                      answer['score']
                  ), answer['text'].toString());
            }).toList()



          ],
        )
    );
  }
}
