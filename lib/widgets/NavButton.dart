import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class NavButton extends StatelessWidget {
  final String _btnName;
  final String _imgUrl;

  NavButton(this._btnName, this._imgUrl);

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
              child: Image.asset(_imgUrl),
              height: 100,
              width: 100,
            ),
            Text(
              _btnName,
              // style: TextStyle(
              //   fontFamily: "Montserrat",
              //   fontSize: 26,
              // ),
            ),
          ],
        ),
        color: Colors.white,
        elevation: 5,
        padding: EdgeInsets.all(0),
      ),
    );
  }
}
