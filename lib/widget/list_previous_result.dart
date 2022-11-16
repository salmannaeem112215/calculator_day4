import 'package:flutter/material.dart';

import './previous_result.dart';

class ListPreviousResult extends StatelessWidget {
  const ListPreviousResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PreviousResult(),
        PreviousResult(),
        PreviousResult(),
      ],
    );
  }
}
