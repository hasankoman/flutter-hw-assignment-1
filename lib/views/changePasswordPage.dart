import "package:flutter/material.dart";
import "package:flutter_homework/custom_widgets/button.dart";
import "package:flutter_homework/custom_widgets/input.dart";
import "package:flutter_homework/main.dart";
import "package:flutter_homework/views/forgetPasswordPage.dart";
import "package:flutter_homework/views/signUpPage.dart";

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    var password1 = "sasas";
    var password2 = "";
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Change Password",
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
                  "Please fill in the information requested below to change password.",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15.0,
                ),
                InputWidget("Email", false, Icon(Icons.mail)),
                SizedBox(
                  height: 15.0,
                ),
                InputWidget("Old Password", true, Icon(Icons.password)),
                SizedBox(
                  height: 15.0,
                ),
                InputWidget("New Password", true, Icon(Icons.password)),
                SizedBox(
                  height: 20.0,
                ),
                ButtonWidget(false, 'Change Password', () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                            'Your password has been changed successfully',
                            textAlign: TextAlign.center),
                      ),
                    );
                    print(password1);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  }
                }),
              ],
            ),
          )),
    );
  }
}
