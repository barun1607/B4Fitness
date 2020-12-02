import 'package:fitness/styles/styles.dart';
import 'package:fitness/widgets/DefaultButton.dart';
import 'package:fitness/widgets/DefaultTextInp.dart';
import "package:flutter/material.dart";

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController uname = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  TextEditingController passReEnter = new TextEditingController();
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  String regex = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  void validation() {
    if(_formKey.currentState.validate()) {
      print('Validated');
    } else {
      print('Not validated');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Text(
                  "Sign Up",
                  style: titleTextStyle
              ),
              Form(
                key: _formKey,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.all(13),
                  height: 390,
                  width: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DefaultTextInp(
                        controller: email,
                        label: "Email",
                        helper: "Enter your email",
                        inpType: TextInputType.emailAddress,
                        validate: (value){
                          if(value.isEmpty) {
                            return 'Required field';
                          } else if (!RegExp(regex).hasMatch(value)) {
                            return 'Invalid email';
                          } else {
                            return null;
                          }
                        },
                      ),
                      DefaultTextInp(
                        controller: uname,
                        label: "Username",
                        helper: "Enter your username",
                        inpType: TextInputType.text,
                        //TODO: Add additional statements to this part to check if username is taken
                        validate: (value){
                          if(value.isEmpty) {
                            return 'Required value';
                          } else {
                            return null;
                          }
                        },
                      ),
                      DefaultTextInp(
                        controller: pass,
                        label: "Password",
                        helper: "Enter your password",
                        obscureText: true,
                        enableSuggestions: false,
                        autoCorrect: false,
                        inpType: TextInputType.visiblePassword,
                        validate: (value){
                          if(value.isEmpty) {
                            return 'Required input';
                          } else if(value.length < 8) {
                            return 'Password should be at least 8 characters long';
                          } else {
                            return null;
                          }
                        },
                      ),
                      DefaultTextInp(
                        controller: passReEnter,
                        label: "Re-enter Password",
                        helper: "Enter your password again",
                        obscureText: true,
                        enableSuggestions: false,
                        autoCorrect: false,
                        inpType: TextInputType.visiblePassword,
                        validate: (value){
                          if(value.isEmpty) {
                            return 'Required input';
                          } else if(value.length < 8) {
                          return 'Password should be at least 8 characters long';
                          } else if(value != pass.text) {
                            return "Password values don't match";
                          } else {
                          return null;
                          }
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DefaultButton(
                            action: validation,
                            name: "Sign up",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}