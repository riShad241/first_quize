import 'package:flutter/material.dart';
class Option extends StatelessWidget {
  VoidCallback selectAnswer;
  final String answerText;

  Option(this.selectAnswer,this.answerText);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // ignore: deprecated_member_use
      child: TextButton(
        child: Text(answerText),
        onPressed: selectAnswer,
      ),
    );
  }
}
