import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnswerResult extends StatelessWidget {
  AnswerResult({Key? key, required this.statement}) : super(key: key);
  final String statement;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        statement,
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
    );
  }
}
