import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button(
      {Key? key,
      required this.val,
      required this.length,
      required this.addStatement})
      : super(key: key);
  final length;
  final String val;
  Function addStatement;

  @override
  Widget build(BuildContext context) {
    double height = length / 4;
    double width = length / 4;
    var bagroundColor = Theme.of(context).primaryColorDark;
    var textColor = Colors.white;
    if (val == 'C' ||
        val == '/' ||
        val == 'x' ||
        val == '-' ||
        val == '+' ||
        val == 'DEL') {
      textColor = Theme.of(context).focusColor;
      bagroundColor = Theme.of(context).primaryColorLight;
    } else if (val == '=') {
      bagroundColor = Theme.of(context).focusColor;
      height = length / 2;
    }

    return Container(
      height: height,
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: bagroundColor,
            elevation: 5,
            textStyle: TextStyle(
              color: textColor,
              fontSize: 20,
            ),
          ),
          child: Text(val),
          onPressed: () {
            addStatement(val);
          },
        ),
      ),
    );
  }
}
