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
              NavButton("BMI Calculator ", "assets/images/calculator.png", (){}),
              NavButton("BF% Calculator", "assets/images/fat.png", (){}),
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavButton("Weight Tracker", "assets/images/weight-scale.png", (){}),
              NavButton("Personal Stats", "assets/images/bmi.png", (){}),
            ],
          ),
        ],
      ),
    );
  }
}