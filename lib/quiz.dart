import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function questionAnswer;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.questionAnswer});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Question(questions[questionIndex]['question']),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(() => questionAnswer(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}

/*
Column(
children: [
Question(questions[_questionIndex]['question']),
...(questions[_questionIndex]['answers'] as List<String>).map((answer){
return Answer(_questionAnswer,answer);
}
).toList(),
],
);
 */
