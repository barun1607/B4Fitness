import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class NavButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 150,
      child: RaisedButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              child: Image.asset("assets/images/1200px-Calendar_font_awesome.svg.png"),
              height: 100,
              width: 100,
            ),
            Text(
              "Hello",
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 26,
              ),
            ),
          ],
        ),
        color: Colors.red,
        elevation: 5,
        padding: EdgeInsets.all(0),
      ),
    );
  }
}
