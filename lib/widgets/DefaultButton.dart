import 'package:fitness/styles/styles.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final GestureTapCallback action;
  final String name;

  DefaultButton({@required this.action, @required this.name});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: btnColor,
      splashColor: bgColorSec,
      onPressed: action,
      child: Text(
        name,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      )
    );
  }
}