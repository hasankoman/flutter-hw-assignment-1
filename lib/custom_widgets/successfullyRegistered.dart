import "package:flutter/material.dart";
import "package:flutter_homework/custom_widgets/button.dart";
import "package:flutter_homework/custom_widgets/input.dart";
import "package:flutter_homework/main.dart";
import "package:flutter_homework/views/LoginPage.dart";
import "package:flutter_homework/views/forgetPasswordPage.dart";
import "package:flutter_homework/views/signUpPage.dart";

class SuccessfullyRegisteredWidget extends StatelessWidget {
  final _formKey;
  const SuccessfullyRegisteredWidget(this._formKey, {super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xFFE5E5CB),
      icon: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 30,
        child: Icon(
          Icons.done_rounded,
          size: 40,
          color: Colors.green[400],
        ),
      ),
      title: Text(
        "Successfully Registered",
        style: TextStyle(color: Colors.green[400]),
      ),
      titlePadding: EdgeInsets.symmetric(horizontal: 50.0),
      iconPadding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      actionsPadding: EdgeInsets.only(bottom: 20.0, top: 20.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      actions: [
        ButtonWidget(true, "Go to login page to login", () {
          Navigator.pop(context);
          _formKey.currentState?.reset();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        })
      ],
      actionsAlignment: MainAxisAlignment.center,
    );
  }
}
