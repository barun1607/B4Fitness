import 'package:fitness/styles/styles.dart';
import 'package:flutter/material.dart';

class DefaultTextInp extends StatefulWidget {
  final String label, helper;
  Function validate;
  TextEditingController controller;
  TextInputType inpType;
  final bool obscureText, autoCorrect, enableSuggestions;

  DefaultTextInp({@required this.label,@required  this.helper,@required  this.controller, this.obscureText, this.enableSuggestions, this.autoCorrect, this.inpType, this.validate});

  @override
  _DefaultTextInpState createState() => _DefaultTextInpState();
}

class _DefaultTextInpState extends State<DefaultTextInp> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.inpType,
      obscureText: widget.obscureText ?? false,
      autocorrect: widget.autoCorrect ?? true,
      enableSuggestions: widget.enableSuggestions ?? true,
      controller: widget.controller,
      validator: widget.validate,
      decoration: InputDecoration(
        labelText: widget.label,
        hintText: widget.helper,
        labelStyle: defaultTextStyle,
        helperStyle: defaultTextStyle,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        )
      ),
    );
  }
}
