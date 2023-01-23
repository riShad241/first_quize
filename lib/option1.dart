import 'package:flutter/material.dart';
class Quation extends StatelessWidget {
  final String questionText;
  Quation(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(questionText,
            style: TextStyle(fontSize: 30 ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
