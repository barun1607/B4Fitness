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
              Container(
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
                    ),
                    DefaultTextInp(
                      controller: uname,
                      label: "Username",
                      helper: "Enter your username",
                      inpType: TextInputType.text,
                    ),
                    DefaultTextInp(
                      controller: pass,
                      label: "Password",
                      helper: "Enter your password",
                      obscureText: true,
                      enableSuggestions: false,
                      autoCorrect: false,
                      inpType: TextInputType.visiblePassword,
                    ),
                    DefaultTextInp(
                      controller: passReEnter,
                      label: "Re-enter Password",
                      helper: "Enter your password again",
                      obscureText: true,
                      enableSuggestions: false,
                      autoCorrect: false,
                      inpType: TextInputType.visiblePassword,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DefaultButton(
                          action: (){
                            //TODO: Edit this part to initiate to Sign up
                          },
                          name: "Sign up",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}