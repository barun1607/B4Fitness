import 'package:fitness/pages/signup.dart';
import 'package:fitness/styles/styles.dart';
import 'package:fitness/widgets/DefaultButton.dart';
import 'package:fitness/widgets/DefaultTextInp.dart';
import "package:flutter/material.dart";

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  TextEditingController uname = new TextEditingController();
  TextEditingController pass = new TextEditingController();

  void validation() {
    if(_formKey.currentState.validate()) {
      print('Validated');
      //TODO: Add all the code to execute login here
    } else {
      print('Not Validated');
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
                "Login",
                style: titleTextStyle
              ),
              Form(
                key: _formKey,
                child: Container(
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
                        validate: (value) {
                          if(value.isEmpty) {
                            return 'Required field';
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
                        validate: (value) {
                          if(value.isEmpty) {
                            return 'Required field';
                          } else if(value.length < 8) {
                            return 'Inadequate password length';
                          } else {
                            return null;
                          }
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DefaultButton(
                            action: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SignUp())
                              );
                            },
                            name: "Sign up",
                          ),
                          DefaultButton(
                            action: validation,
                            name: "Log in",
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
