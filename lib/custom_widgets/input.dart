import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String labelText;
  final bool isPassword;
  final Icon icon;
  InputWidget(this.labelText, this.isPassword, this.icon, {super.key});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: isPassword,
        cursorColor: const Color(0xFF393E46),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter ${labelText.toLowerCase()} here';
          }
          if (labelText == "Email" &&
              !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(value)) {
            return 'Please enter valid email';
          }
          if (labelText.contains("Password") && value.length < 8) {
            return 'Please enter a password of 8 characters or more';
          }
          if (labelText == "Phone Number" &&
              !RegExp(r"^(?:[+0]9)?[0-9]{11}$").hasMatch(value)) {
            return 'Please enter your number like that: 0987653210';
          }
          return null;
        },
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF393E46), width: 0.0),
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
          ),
          prefixIconColor: Color(0xFF393E46),
          prefixIcon: icon,
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40.0)),
              borderSide: BorderSide(color: Color(0xFF393E46), width: 1.0)),
          label: Text(
            labelText,
            style: const TextStyle(color: Color(0xFF393E46), fontSize: 16),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.redAccent, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.redAccent, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
          ),
          hintText: "Please enter your ${labelText.toLowerCase()} here",
        ));
  }
}
