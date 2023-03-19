import 'package:flutter/material.dart';
import 'package:flutter_homework/custom_widgets/button.dart';
import 'package:flutter_homework/views/LoginPage.dart';
import 'package:flutter_homework/views/changePasswordPage.dart';
import 'package:flutter_homework/views/forgetPasswordPage.dart';
import 'package:flutter_homework/views/signUpPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Homework 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Welcome to Home Page",
              style: TextStyle(color: Color(0xFFEEEEEE), fontSize: 24.0)),
          backgroundColor: Color(0xFF393E46),
          shadowColor: Color(0xFF393E46),
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                Text("Do you have account?"),
                SizedBox(
                  height: 10.0,
                ),
                ButtonWidget(false, "Login", () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                }),
                SizedBox(
                  height: 30.0,
                ),
                Text("Don't you have account?"),
                SizedBox(
                  height: 10.0,
                ),
                ButtonWidget(false, "Sign Up", () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SingUpPage()),
                  );
                }),
                SizedBox(
                  height: 30.0,
                ),
                Text("You have an account and change password?"),
                SizedBox(
                  height: 10.0,
                ),
                ButtonWidget(false, "Change Password", () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChangePasswordPage()),
                  );
                })
              ])),
        ));
  }
}

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.white,
    backgroundColor: Colors.blue,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
    textStyle: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w300));
