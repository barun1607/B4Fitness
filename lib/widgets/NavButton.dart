import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final Color _color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 150,
      child: FlatButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Hello"),
          ],
        ),
        color: Colors.red,
        padding: EdgeInsets.all(0),
        highlightColor: Colors.red[600],
      ),
    );
  }
}
