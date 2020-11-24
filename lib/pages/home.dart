import 'package:fitness/widgets/MyDrawer.dart';
import 'package:fitness/widgets/NavButton.dart';
import 'package:flutter/material.dart';

class Home  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: MyDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavButton("hello", "assets/images/1200px-Calendar_font_awesome.svg.png"),
              NavButton("hello", "assets/images/1200px-Calendar_font_awesome.svg.png"),
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavButton("hello", "assets/images/1200px-Calendar_font_awesome.svg.png"),
              NavButton("hello", "assets/images/1200px-Calendar_font_awesome.svg.png"),
            ],
          ),
        ],
      ),
    );
  }
}