import 'package:fitness/pages/home.dart';
import 'package:fitness/styles/styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        appBarTheme: barTheme,
        scaffoldBackgroundColor: bgColor,
        textTheme: defaultText,
      ),
    );
  }
}



