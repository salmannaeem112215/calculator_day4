import 'dart:ui';

import 'package:calculator_day4/widget/answer_result.dart';
import './list_previous_result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  Answer({Key? key, required this.statement}) : super(key: key);
  final String statement;
  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          verticalDirection: VerticalDirection.down,
          children: [
            ListPreviousResult(),
            AnswerResult(statement: widget.statement),
          ],
        ),
      ),
    );
  }
}
