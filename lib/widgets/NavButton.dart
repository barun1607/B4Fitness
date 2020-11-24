import 'package:fitness/styles/styles.dart';
import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final String _btnName;
  final String _imgUrl;
  GestureTapCallback _action;

  NavButton(this._btnName, this._imgUrl, this._action);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 150,
      child: RaisedButton(
        onPressed: _action,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              child: Image.asset(_imgUrl),
              height: 80,
              width: 80,
            ),
            Text(_btnName),
          ],
        ),
        color: Colors.white,
        splashColor: bgColorSec,
        elevation: 5,
        padding: EdgeInsets.all(0),
      ),
    );
  }
}
