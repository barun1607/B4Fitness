import 'package:fitness/styles/styles.dart';
import 'package:fitness/widgets/DefaultButton.dart';
import 'package:fitness/widgets/DefaultTextInp.dart';
import "package:flutter/material.dart";

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController uname = new TextEditingController();
  TextEditingController pass = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Text(
                "Login",
                style: titleTextStyle
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                padding: EdgeInsets.all(13),
                height: 270,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DefaultButton(
                          action: (){
                            //TODO: Edit this part to redirect to Sign up
                          },
                          name: "Sign up",
                        ),
                        DefaultButton(
                          action: (){
                            //TODO: Edit this part for login authentication
                          },
                          name: "Log in",
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
