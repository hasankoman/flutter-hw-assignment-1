import "package:flutter/material.dart";
import "package:flutter_homework/custom_widgets/button.dart";
import "package:flutter_homework/custom_widgets/input.dart";
import "package:flutter_homework/main.dart";
import "package:flutter_homework/views/forgetPasswordPage.dart";
import "package:flutter_homework/views/signUpPage.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Login",
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
                  "Please fill in the information requested below to login.",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15.0,
                ),
                InputWidget("Email", false, Icon(Icons.email)),
                SizedBox(
                  height: 15.0,
                ),
                InputWidget("Password", true, Icon(Icons.password)),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgetPasswordPage()),
                    );
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: Color(0xFF393E46), fontSize: 15),
                  ),
                ),
                ButtonWidget(false, 'Login', () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Successfully Login',
                              textAlign: TextAlign.center)),
                    );
                  }
                }),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Don't you have an account?",
                  style: TextStyle(color: Color(0xFF393E46)),
                ),
                SizedBox(
                  height: 10.0,
                ),
                ButtonWidget(true, 'Sign Up', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SingUpPage()),
                  );
                })
              ],
            ),
          )),
    );
  }
}
