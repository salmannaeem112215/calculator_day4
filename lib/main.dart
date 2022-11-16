import 'package:calculator_day4/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        primaryColorLight: Color(0xFF363746),
        primaryColor: Color(0xFF2E2F3E),
        primaryColorDark: Color(0xFF242530),
        focusColor: Color(0xFFFFBB00),
        backgroundColor: Color(0xff242530),
      ),
      home: HomeScreen(),
    );
  }
}
