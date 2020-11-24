import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';

Color navColor = HexColor("#0F3057");
Color bgColor = HexColor("#E7E7DE");
Color bgColorSec = HexColor("#00587A");
Color btnColor = HexColor("#008891");

AppBarTheme barTheme = AppBarTheme(
  textTheme: TextTheme(
    headline6: TextStyle(
      fontFamily: "Montserrat",
      fontSize: 24,
    )
  ),
  color: navColor,
);

TextStyle titleTextStyle = TextStyle(
  fontFamily: "Montserrat",
  fontWeight: FontWeight.bold,
  fontSize: 28,
);

TextStyle defaultTextStyle = TextStyle(
  fontFamily: "Montserrat",
  fontWeight: FontWeight.normal,
  fontSize: 16,
);

TextTheme defaultText = TextTheme(
  button: TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.normal,
    fontSize: 18,
  ),
);