import 'package:flutter/material.dart';
import './answer.dart';
import './questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questIndex;
  final Function answerQuest; //VoidCallback for 0 arguments

  Quiz(
      {required this.questions,
      required this.answerQuest,
      required this.questIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questIndex]['QuestionText'] as String,
        ),
        //spread operator
        ...(questions[questIndex]['AnswerText'] as List<Map<String, Object>>)
            .map((value) {
          return Answer(
            () => answerQuest(value['Score']),
            value['Text'] as String,
          );
        }).toList()
      ],
    );
  }
}
