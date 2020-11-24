import 'package:fitness/pages/home.dart';
import 'package:fitness/pages/login.dart';
import 'package:fitness/pages/signup.dart';
import 'package:fitness/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUp(),
      theme: ThemeData(
        appBarTheme: barTheme,
        scaffoldBackgroundColor: bgColor,
        textTheme: defaultText,
        primaryColor: bgColorSec,
      ),
    );
  }
}



