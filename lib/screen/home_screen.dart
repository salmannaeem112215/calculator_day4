import 'package:flutter/material.dart';

import '../widget/button.dart';
import '../widget/answer.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  String _statement = '';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    var _buttonColor = Theme.of(context).primaryColorLight;
    void _addStatement(String val) {
      if (val == 'DEL') {
        if (widget._statement.length >= 1) {
          setState(() {
            widget._statement =
                widget._statement.substring(0, widget._statement.length - 1);
          });
        }
      } else {
        setState(() {
          widget._statement = widget._statement + val;
        });
      }
    }

    List<String> _buttonList = [
      'C',
      '7',
      '4',
      '1',
      '%',
      '/',
      '8',
      '5',
      '2',
      '0',
      'x',
      '9',
      '6',
      '3',
      '.',
      'DEL',
      '-',
      '+',
      '='
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: _mediaQuery.size.height -
                  _mediaQuery.size.width * 5 / 4 -
                  _mediaQuery.padding.bottom -
                  _mediaQuery.padding.top,
              width: _mediaQuery.size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Answer(statement: widget._statement),
              ),
            ),
            Container(
              height: _mediaQuery.size.width * 5 / 4,
              width: _mediaQuery.size.width,
              child: Wrap(
                textDirection: TextDirection.ltr,
                alignment: WrapAlignment.start,
                runAlignment: WrapAlignment.start,
                direction: Axis.vertical,
                children: _buttonList
                    .map((e) => Button(
                          val: e,
                          length: _mediaQuery.size.width,
                          addStatement: _addStatement,
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
