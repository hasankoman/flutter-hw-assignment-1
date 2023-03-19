import "package:flutter/material.dart";
import "package:flutter_homework/custom_widgets/button.dart";
import "package:flutter_homework/custom_widgets/input.dart";
import "package:flutter_homework/custom_widgets/successfullyRegistered.dart";
import "package:flutter_homework/main.dart";
import "package:flutter_homework/views/LoginPage.dart";

class SingUpPage extends StatelessWidget {
  const SingUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        title: const Text("Sign Up",
            style: TextStyle(color: Color(0xFFEEEEEE), fontSize: 24.0)),
        backgroundColor: Color(0xFF393E46),
        shadowColor: Color(0xFF393E46),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.only(
            left: 15.0,
            top: 15.0,
            right: 15.0,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Please fill in the information requested below to signup.",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15.0,
                ),
                InputWidget("Name", false, Icon(Icons.person)),
                SizedBox(
                  height: 15.0,
                ),
                InputWidget("Phone Number", false, Icon(Icons.phone)),
                SizedBox(
                  height: 15.0,
                ),
                InputWidget("Email", false, Icon(Icons.mail)),
                SizedBox(
                  height: 15.0,
                ),
                InputWidget("Password", true, Icon(Icons.password)),
                const SizedBox(
                  height: 20.0,
                ),
                ButtonWidget(false, 'Sign Up', () {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                        context: context,
                        builder: (context) =>
                            SuccessfullyRegisteredWidget(_formKey));
                  }
                }),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Do you already have an account?",
                  style: TextStyle(color: Color(0xFF393E46)),
                ),
                SizedBox(
                  height: 10.0,
                ),
                ButtonWidget(
                  true,
                  'Login',
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                ),
              ],
            ),
          )),
    );
  }
}
